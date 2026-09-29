#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
optimize_mca.py
================
Minecraft 1.20.4 のリージョンファイル(.mca)を軽量化するスクリプト。

デフォルトで行う処理:
  1. starlight.light_version タグの削除（Starlight MOD由来データ、チャンク直下）
  2. isLightOn を false に戻す（バニラが次回ロード時に光を自動再計算）
  3. PostProcessing / block_ticks / fluid_ticks を空にする
     （いずれもサーバー起動時に自動再生成されるキャッシュ的データ）
  4. 各セクション内の starlight.blocklight_state / starlight.skylight_state
     タグを削除（Starlight由来）
  5. 各セクション内の BlockLight / SkyLight 配列を削除
     （isLightOn=false にする場合、次回ロード時にバニラが再計算するため
      不要になる明度キャッシュ。ファイルサイズのかなりの割合を
      占めることがあります）
  6. blending_data タグの削除（隣接チャンクとの地形境界ブレンド用データ。
     生成完了済みチャンクでは役目を終えているとみられるが、Mojang公式の
     安全性明言はなくコミュニティ調査による推定。デフォルトOFF）
  7. Heightmaps タグの削除（表面の高さマップキャッシュ。クライアント/サーバー
     とも欠落時は自動的に再計算する仕様であることが Minecraft プロトコル
     資料で確認できるため安全に削除可能。デフォルトOFF）

チャンクの中身（ブロック・エンティティ・ブロックエンティティ・構造物など）は
一切変更しません。壊れているように見えるチャンクがあっても、対応する
NBTパーサ(amulet-nbt)で読めれば正しく処理されます。

必要なライブラリ:
    pip install amulet-nbt

使い方:
    # フォルダ内の全 .mca を処理（デフォルトは上書き。事前にバックアップ推奨）
    python optimize_mca.py "C:\\path\\to\\world\\region"

    # 別フォルダに出力して元ファイルを保持したい場合
    python optimize_mca.py "C:\\path\\to\\world\\region" --output "C:\\path\\to\\backup_region"

    # 処理項目を個別にON/OFFしたい場合
    python optimize_mca.py "C:\\path\\to\\world\\region" --no-starlight --no-ticks

    # 引数なしで実行すると、対話形式でフォルダパスを尋ねます
    python optimize_mca.py
"""

import argparse
import os
import struct
import sys
import zlib
from pathlib import Path

try:
    import amulet_nbt
except ImportError:
    print("エラー: amulet-nbt がインストールされていません。")
    print("次のコマンドでインストールしてください:")
    print("    pip install amulet-nbt")
    sys.exit(1)


# ---------------------------------------------------------------------------
# MCA低レベル読み書き
# ---------------------------------------------------------------------------

SECTOR_SIZE = 4096


def read_mca_header(data: bytes):
    """4KBヘッダーから各チャンクの (offset_sectors, sector_count) を読む"""
    entries = []
    for i in range(1024):
        entry = data[i * 4: i * 4 + 4]
        offset_sectors = int.from_bytes(entry[0:3], "big")
        sector_count = entry[3]
        entries.append((offset_sectors, sector_count))
    return entries


def read_chunk_payload(raw: bytes, offset_sectors: int):
    """チャンクの生の圧縮データを取り出す。戻り値: (compression_type, payload_bytes)"""
    offset = offset_sectors * SECTOR_SIZE
    length = int.from_bytes(raw[offset: offset + 4], "big")
    compression = raw[offset + 4]
    payload = raw[offset + 5: offset + 4 + length]
    return compression, payload


def decompress_payload(compression: int, payload: bytes) -> bytes:
    if compression == 1:
        import gzip
        return gzip.decompress(payload)
    elif compression == 2:
        return zlib.decompress(payload)
    elif compression == 3:
        return payload  # uncompressed
    else:
        raise ValueError(f"未知の圧縮形式です: {compression}")


# ---------------------------------------------------------------------------
# チャンクNBT編集
# ---------------------------------------------------------------------------

def optimize_chunk_nbt(root, opts) -> dict:
    """
    チャンクのルートCompoundTagを直接書き換える。
    戻り値: 統計情報の辞書
    """
    stats = {"starlight_removed": 0, "section_light_removed": 0, "blending_data_removed": 0,
              "heightmaps_removed": 0}

    if opts.remove_starlight and "starlight.light_version" in root:
        del root["starlight.light_version"]
        stats["starlight_removed"] = 1

    if opts.reset_light and "isLightOn" in root:
        root["isLightOn"] = amulet_nbt.ByteTag(0)

    if opts.clear_ticks:
        for key in ("block_ticks", "fluid_ticks", "PostProcessing"):
            if key in root:
                root[key] = amulet_nbt.ListTag()

    if opts.remove_light_cache and "sections" in root:
        for sec in root["sections"]:
            for key in ("starlight.blocklight_state", "starlight.skylight_state",
                        "BlockLight", "SkyLight"):
                if key in sec:
                    del sec[key]
                    stats["section_light_removed"] += 1

    if opts.remove_blending_data and "blending_data" in root:
        del root["blending_data"]
        stats["blending_data_removed"] = 1

    if opts.remove_heightmaps and "Heightmaps" in root:
        del root["Heightmaps"]
        stats["heightmaps_removed"] = 1

    return stats


# ---------------------------------------------------------------------------
# メイン処理: 1ファイル分
# ---------------------------------------------------------------------------

def process_mca_file(src_path: Path, dst_path: Path, opts) -> dict:
    """
    1つの .mca ファイルを処理する。
    src_path と dst_path が同じ場合は上書きになる（安全のため一時ファイル経由）。
    """
    raw = src_path.read_bytes()
    if len(raw) < SECTOR_SIZE * 2:
        # 中身が空(全チャンク未生成)のリージョンファイル
        if dst_path != src_path:
            dst_path.write_bytes(raw)
        return {"chunks": 0, "starlight_removed": 0, "section_light_removed": 0,
                "blending_data_removed": 0, "heightmaps_removed": 0, "errors": []}

    header_entries = read_mca_header(raw[0:SECTOR_SIZE])
    timestamps = raw[SECTOR_SIZE: SECTOR_SIZE * 2]

    new_header = bytearray(SECTOR_SIZE)
    data_section = bytearray()
    current_sector = 2  # セクタ0,1はヘッダーとタイムスタンプで予約済み

    chunk_count = 0
    starlight_removed = 0
    section_light_removed = 0
    blending_data_removed = 0
    heightmaps_removed = 0
    errors = []

    for idx in range(1024):
        offset_sectors, sector_count = header_entries[idx]
        if offset_sectors == 0:
            continue  # このチャンクは未生成

        try:
            compression, payload = read_chunk_payload(raw, offset_sectors)
            decompressed = decompress_payload(compression, payload)
            nbtfile = amulet_nbt.load(decompressed, compressed=False, little_endian=False)
            root = nbtfile.compound

            chunk_stats = optimize_chunk_nbt(root, opts)
            starlight_removed += chunk_stats["starlight_removed"]
            section_light_removed += chunk_stats["section_light_removed"]
            blending_data_removed += chunk_stats["blending_data_removed"]
            heightmaps_removed += chunk_stats["heightmaps_removed"]

            out_raw = nbtfile.save_to(compressed=False, little_endian=False)
            out_compressed = zlib.compress(out_raw, level=6)

        except Exception as e:  # noqa: BLE001
            # パースに失敗した場合は元データをそのまま温存し、チャンクを失わない
            x = idx % 32
            z = idx // 32
            errors.append(f"chunk ({x},{z}): {e!r} -> 元データのまま保持")
            compression, payload = read_chunk_payload(raw, offset_sectors)
            if compression == 2:
                out_compressed = payload
            else:
                # gzip/uncompressed の場合は zlib に揃えて格納し直す
                decompressed = decompress_payload(compression, payload)
                out_compressed = zlib.compress(decompressed, level=6)

        chunk_len = len(out_compressed) + 1  # +1 = 圧縮タイプバイト分
        block = struct.pack(">I", chunk_len) + bytes([2]) + out_compressed
        pad_len = (-len(block)) % SECTOR_SIZE
        block += b"\x00" * pad_len
        new_sector_count = len(block) // SECTOR_SIZE

        if new_sector_count > 255:
            raise ValueError(
                f"チャンク ({idx % 32},{idx // 32}) が大きすぎます "
                f"({new_sector_count} セクタ)。処理を中断します。"
            )

        new_header[idx * 4: idx * 4 + 3] = current_sector.to_bytes(3, "big")
        new_header[idx * 4 + 3] = new_sector_count

        data_section += block
        current_sector += new_sector_count
        chunk_count += 1

    out_bytes = bytes(new_header) + timestamps + bytes(data_section)

    if dst_path == src_path:
        # 上書きの場合は一時ファイルに書いてから置き換える（途中失敗時の破損防止）
        tmp_path = dst_path.with_suffix(dst_path.suffix + ".tmp")
        tmp_path.write_bytes(out_bytes)
        tmp_path.replace(dst_path)
    else:
        dst_path.parent.mkdir(parents=True, exist_ok=True)
        dst_path.write_bytes(out_bytes)

    return {
        "chunks": chunk_count,
        "starlight_removed": starlight_removed,
        "section_light_removed": section_light_removed,
        "blending_data_removed": blending_data_removed,
        "heightmaps_removed": heightmaps_removed,
        "errors": errors,
    }


# ---------------------------------------------------------------------------
# CLI
# ---------------------------------------------------------------------------

def parse_args():
    parser = argparse.ArgumentParser(
        description="Minecraft 1.20.4 リージョンファイル(.mca)を軽量化します。",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog=__doc__,
    )
    parser.add_argument(
        "region_dir",
        nargs="?",
        default=None,
        help="region フォルダのパス（中の *.mca を一括処理します）",
    )
    parser.add_argument(
        "--output",
        "-o",
        default=None,
        help="出力先フォルダ。省略時は元ファイルを直接上書きします。",
    )
    parser.add_argument(
        "--no-starlight",
        dest="remove_starlight",
        action="store_false",
        help="starlight.light_version タグの削除を行わない",
    )
    parser.add_argument(
        "--no-relight",
        dest="reset_light",
        action="store_false",
        help="isLightOn を false に戻す処理を行わない",
    )
    parser.add_argument(
        "--no-ticks",
        dest="clear_ticks",
        action="store_false",
        help="PostProcessing / block_ticks / fluid_ticks のクリアを行わない",
    )
    parser.add_argument(
        "--no-lightcache",
        dest="remove_light_cache",
        action="store_false",
        help="セクション内の starlight.blocklight_state / BlockLight / SkyLight の削除を行わない",
    )
    parser.add_argument(
        "--remove-blending-data",
        dest="remove_blending_data",
        action="store_true",
        help=(
            "blending_data タグ（隣接チャンクとの地形境界ブレンド用、通常はチャンクあたり数十バイト）"
            "を削除する。生成完了済みチャンクでは役目を終えているとみられるが、"
            "Mojang公式の安全性明言はなくコミュニティ調査による推定のため、デフォルトはOFF。"
        ),
    )
    parser.add_argument(
        "--remove-heightmaps",
        dest="remove_heightmaps",
        action="store_true",
        help=(
            "Heightmaps タグ（表面の高さマップキャッシュ、チャンクあたり約1KB強）を削除する。"
            "欠落時はクライアント/サーバーとも自動的に再計算する仕様であることが"
            "Minecraftプロトコル資料で確認できるため安全性は高いが、念のためデフォルトはOFF。"
        ),
    )
    parser.add_argument(
        "-y", "--yes",
        action="store_true",
        help="上書き確認プロンプトをスキップする",
    )
    parser.set_defaults(
        remove_starlight=True, reset_light=True, clear_ticks=True, remove_light_cache=True,
        remove_blending_data=False, remove_heightmaps=False,
    )
    return parser.parse_args()


def main():
    args = parse_args()

    region_dir = args.region_dir
    if region_dir is None:
        region_dir = input("region フォルダのパスを入力してください: ").strip().strip('"')

    region_path = Path(region_dir)
    if not region_path.is_dir():
        print(f"エラー: フォルダが見つかりません: {region_path}")
        sys.exit(1)

    mca_files = sorted(region_path.glob("*.mca"))
    if not mca_files:
        print(f"'{region_path}' に .mca ファイルが見つかりませんでした。")
        sys.exit(0)

    overwrite = args.output is None
    output_path = Path(args.output) if args.output else None

    print(f"対象フォルダ: {region_path}")
    print(f"対象ファイル数: {len(mca_files)}")
    print("処理項目:")
    print(f"  - starlight.light_version 削除     : {'ON' if args.remove_starlight else 'OFF'}")
    print(f"  - isLightOn を false に            : {'ON' if args.reset_light else 'OFF'}")
    print(f"  - tick/PostProcessing クリア       : {'ON' if args.clear_ticks else 'OFF'}")
    print(f"  - セクション内 光データキャッシュ削除: {'ON' if args.remove_light_cache else 'OFF'}")
    print(f"  - blending_data 削除 (実験的)       : {'ON' if args.remove_blending_data else 'OFF'}")
    print(f"  - Heightmaps 削除                  : {'ON' if args.remove_heightmaps else 'OFF'}")
    if args.remove_light_cache and not args.reset_light:
        print(
            "  ※ 警告: 光データキャッシュを削除しつつ isLightOn を維持すると、"
            "古い光情報のフラグと実データの不整合が起きる可能性があります。"
            "--no-relight と併用しないことを推奨します。"
        )

    if overwrite:
        print()
        print("*** 元ファイルを上書きします。事前にバックアップを取ることを強く推奨します。 ***")
        if not args.yes:
            answer = input("続行しますか？ [y/N]: ").strip().lower()
            if answer != "y":
                print("キャンセルしました。")
                sys.exit(0)
    else:
        print(f"出力先フォルダ: {output_path}")

    total_chunks = 0
    total_starlight = 0
    total_section_light = 0
    total_blending = 0
    total_heightmaps = 0
    total_before = 0
    total_after = 0
    all_errors = []

    for i, mca_file in enumerate(mca_files, 1):
        dst_file = mca_file if overwrite else output_path / mca_file.name
        before_size = mca_file.stat().st_size

        try:
            result = process_mca_file(mca_file, dst_file, args)
        except Exception as e:  # noqa: BLE001
            print(f"[{i}/{len(mca_files)}] {mca_file.name}: 失敗 ({e!r})")
            continue

        after_size = dst_file.stat().st_size
        total_before += before_size
        total_after += after_size
        total_chunks += result["chunks"]
        total_starlight += result["starlight_removed"]
        total_section_light += result["section_light_removed"]
        total_blending += result["blending_data_removed"]
        total_heightmaps += result["heightmaps_removed"]
        all_errors.extend(result["errors"])

        print(
            f"[{i}/{len(mca_files)}] {mca_file.name}: "
            f"{before_size/1024:.0f}KB -> {after_size/1024:.0f}KB "
            f"(chunks={result['chunks']}, starlight除去={result['starlight_removed']}, "
            f"光キャッシュ除去={result['section_light_removed']}, "
            f"blending_data除去={result['blending_data_removed']}, "
            f"Heightmaps除去={result['heightmaps_removed']})"
        )

    print()
    print("=" * 60)
    print(f"完了: {len(mca_files)} ファイル / チャンク合計 {total_chunks}")
    print(f"starlight.light_version 除去合計: {total_starlight}")
    print(f"セクション内 光データキャッシュ除去合計: {total_section_light}")
    if args.remove_blending_data:
        print(f"blending_data 除去合計: {total_blending}")
    if args.remove_heightmaps:
        print(f"Heightmaps 除去合計: {total_heightmaps}")
    if total_before > 0:
        reduction = (1 - total_after / total_before) * 100
        print(
            f"合計サイズ: {total_before/1024/1024:.2f}MB -> "
            f"{total_after/1024/1024:.2f}MB ({reduction:.1f}% 削減)"
        )
    if all_errors:
        print()
        print(f"警告: {len(all_errors)} 件のチャンクでパースに失敗し、元データのまま保持しました。")
        print("(サロゲートペア文字を含むテキスト等が原因の場合があります。データは失われていません)")
        for err in all_errors[:20]:
            print(f"  - {err}")
        if len(all_errors) > 20:
            print(f"  ...ほか {len(all_errors) - 20} 件")


if __name__ == "__main__":
    main()
