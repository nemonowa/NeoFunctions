# 命名：not_built
# 説明：【追加：2026-10-09 ルブラ編】第二章の建築（region の差し替え）が入っていないワールド：何も置かず、進み具合を 419 に戻す
# 実行条件：セレスタ次元
# >/function neofunction:system/rubra/d2/setup_in
# =/function neofunction:system/rubra/d2/not_built

# 内容
tellraw @a[gamemode=creative] {"text":"第二章：このワールドには第二章の建築（水守の館・聖堂）が入っていないので、NPC と仕掛けは置きませんでした","color":"red"}
execute if score #temp main_story matches 420 run scoreboard players set #temp main_story 419
