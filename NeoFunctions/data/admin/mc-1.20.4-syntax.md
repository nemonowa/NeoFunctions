# Minecraft 1.20.4 の構文メモ — 混ぜてはいけない他バージョンの構文

NeoFunctions は **Java Edition 1.20.4 / pack_format 26** で書かれている。
エージェントの学習知識には 1.20.5〜1.21.x の構文が大量に混ざっているため、**書く前にバージョンを固定して一次情報源で確認**すること。

## 1. 情報源と調べ方（優先順）

1. **Minecraft Wiki（minecraft.wiki、英語版）** — 各コマンド／データ形式のページ末尾「History」節に、どのバージョンで何が変わったかが書かれている。検索は `<command> minecraft wiki` で行い、fetch した本文で **1.20.5 / 1.21 の変更が「後から」入ったものかを確認**する。日本語版・Fandom 版は更新が遅いので、英語版で裏を取る。
2. **misode.github.io** — advancement / loot table / predicate / item modifier / dimension / worldgen の JSON ジェネレータ。画面右上のバージョンを **1.20.4** に切り替えてから構造を確認する。
3. **このリポジトリの同種ファイル** — 実際に 1.20.4 で動いている実例。最終的な形は必ず既存例に合わせる。
4. **Mojang 公式 changelog**（minecraft.net の 1.20.2 / 1.20.3 / 1.20.4 記事の "Technical Changes"）。

確認できない構文は書かない。提出時に「未確認」と明記する。

## 2. 1.20.4 で使える（このプロジェクトが実際に使っている）新しめの機能

| 機能 | 導入 | このプロジェクトでの使い方 |
|---|---|---|
| マクロ関数 `$command … $(key)` / `function … with storage` / `function … {key:value}` | 1.20.2 | `asset/summon` `asset/item` `asset/skill`、`.get_entity {Name:"…"}`、`asset/nbt/for` |
| `return <int>` / `return run <cmd>` / `return fail` | 1.20.2 / 1.20.3 | ガード節 `execute … run return 0`、分岐 `execute if … run return run function …` |
| `execute if\|unless function <fn>` | 1.20.3 | `.spawn/obj/item/.neo` の職業判定 |
| `scoreboard players display name/numberformat` | 1.20.3 | サイドバー装飾行 `upper/downer/url` |
| `/tick` コマンド | 1.20.3 | 「Esc や /tick freeze で止まる」というコメント |
| `random` コマンド | 1.20.2 | 乱数（既存は predicate `random_chance/N` が主） |
| `damage` コマンド / `damage_type` レジストリ | 1.19.4 | `on origin run damage @s 1 minecraft:magic`、`neofunction/damage_type/` |
| `execute on <relation>` | 1.19.4 | `on passengers` `on origin` |
| display エンティティ / `interaction` | 1.19.4 | `item_display` `text_display` `superdisplay` タグ |

注意：1.20.3 で「関数は `/return` を使わない限り結果値を持たない」に変わった。`execute store … run function …` の挙動は 1.20.2 以前と異なる。

## 3. 絶対に混ぜてはいけない構文（1.20.5 以降・1.21 以降）

| 1.20.4（正） | 1.20.5+ / 1.21+（誤・このプロジェクトでは不可） |
|---|---|
| `{CustomModelData:317}`（`tag:{…}` 内） | `[custom_model_data=317]` / `components:{"minecraft:custom_model_data":…}` |
| `display:{Name:'…',Lore:['…']}` | `minecraft:custom_name` / `minecraft:lore` コンポーネント |
| `give @s sweet_berries{CustomModelData:317}` | `give @s sweet_berries[custom_model_data=317]` |
| `item modify … minecraft:set_nbt` | `set_components` / `set_custom_data` |
| 進捗の `"items":[{"nbt":"{CustomModelData:317}"}]` | `"predicates"` / `"components"` |
| `Attributes:[{Name:generic.max_health,Base:20}]` | 1.21.2+ `id:"minecraft:max_health"` 形式、`generic.` 接頭辞廃止 |
| `data/<ns>/functions/` `advancements/` `loot_tables/` `predicates/` `item_modifiers/` `recipes/` `structures/` `tags/functions/` | 1.21+ は単数形 `function/` `advancement/` `loot_table/` … `tags/function/` |
| `#minecraft:tick` / `#minecraft:load` のタグは `tags/functions/tick.json` | 1.21+ は `tags/function/tick.json` |
| `execute if items`（存在しない） | 1.20.5+ で追加。使わない |
| テキストコンポーネントは JSON 文字列 `'{"text":"…"}'` / `'[{"text":…}]'` | 1.21.5+ の SNBT 形式テキストコンポーネントは不可 |
| `{Enchantments:[{id:"minecraft:vanishing_curse"}]}` | `[enchantments={…}]` |
| `HandDropChances` `ArmorDropChances` `ArmorItems` `HandItems` | 1.21.5+ の `equipment:{…}` `drop_chances:{…}` は不可 |

判別のコツ：`[` `=` `]` で属性を書いている例・`components` という語・`custom_data`・単数形フォルダ名が出てきたら **1.20.5 以降の情報**なので採用しない。

## 4. このプロジェクト固有の「1.20.4 で正しい」書き方の実例

```mcfunction
# アイテム付与（loot 経由が基本。give にNBTを直書きしない）
loot give @s loot neofunction:item/317

# 手持ちアイテムの CustomModelData 判定（進捗側）
"predicate": { "equipment": { "mainhand": { "nbt": "{CustomModelData:995}" } } }

# セレクタでの NBT 判定（負荷大。進捗検知が使えない場合のみ）
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:995}}}] run …

# エフェクト判定（1.20.2+ は active_effects / id は名前空間付き / amplifier は byte）
execute as @a[nbt={active_effects:[{id:"minecraft:glowing",amplifier:116b}]}] run …

# 召喚（Tags と DeathLootTable を必ず付ける。DeathLootTable が種族ID）
summon villager ~ ~ ~ {Tags:[lv8,god],DeathLootTable:"neofunction:asset/summon/100",…}

# マクロ
$function neofunction:asset/summon/$(summon)
function neofunction:system/adv/player_hurt_entity/.get_entity {Name:"130"}

# 早期 return
execute at @s unless entity @a[distance=..64,limit=1] run return 0
execute if entity @s[tag=!fly1,tag=!boss] run return run function neofunction:entity/skill/.neo-1

# 進捗の周期親
"parent": "neofunction:.clock/5s"
```

## 5. JSON 形式の要点（1.20.4）

- advancement：`criteria.<name>.trigger` は `minecraft:` 付き推奨（既存には省略形も混在。新規は付ける）。`rewards.function` は名前空間パス。表示用進捗は `display.icon.item` と `nbt`（1.20.5+ の `components` 不可）。
- loot table：`type` は `minecraft:entity` / `minecraft:chest` 等。アイテムの見た目・名前は `minecraft:set_nbt`（`set_name` / `set_lore` も可）。
- predicate：`minecraft:entity_properties` `minecraft:random_chance` `minecraft:time_check`（`period` は 1.20 系で `minecraft:time_check` の `period` キー）。
- item modifier：`set_nbt` `set_damage` `set_lore` `set_name` `copy_nbt`。
- damage_type：`exhaustion` `message_id` `scaling` `effects` の4キー（`neofunction/damage_type/.neo.txt` に作者メモ）。
- text component：JSON 文字列。`clickEvent:{action:"run_command",value:"/trigger …"}` / `hoverEvent:{action:"show_text",contents:…}`（1.21.5+ の `click_event` は不可）。

## 6. 検証コマンド

```bash
# 全 JSON パース
find data -name '*.json' -print0 | xargs -0 -n1 python3 -m json.tool >/dev/null
# 1.20.5+ 構文の混入チェック
grep -rnE '\[custom_model_data=|"components"|custom_data|set_components|execute if items' data --include=*.mcfunction --include=*.json
# ヘッダー = とパスの一致
find data -name '*.mcfunction' | while read f; do p=$(grep -m1 '^# =/function ' "$f" | sed 's|# =/function ||'); e=$(echo "$f" | sed -E 's|^data/([^/]+)/functions/(.*)\.mcfunction$|\1:\2|'); [ "$p" != "$e" ] && echo "MISMATCH $f"; done
```
実機検証ができる場合は 1.20.4 サーバーで `/reload` し、ログの `Failed to load function` / `Couldn't parse` を確認する。
