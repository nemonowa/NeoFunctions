# 命名：tick
# 説明：実行の起点毎にファイルを大別して以下の階層を制御している。ノートPCで遊ぶ人のため軽量化に注力せよ！進捗やクロック処理（スケジュール）などは「システム」の階層に、常時処理を使用しない「データベース」はアセットの階層に。
# 実行条件：毎tick実行するコマンド群
# >/function neofunction:#minecraft:tick
# =/function neofunction:tick


# GM(0-0-0-0-1)起点：負荷（小）
function neofunction:system/tick

# 全プレイヤー(@a)起点：負荷（中）
function neofunction:player/tick

# 全エンティティ(@e)起点：負荷（極大）
function neofunction:entity/tick

