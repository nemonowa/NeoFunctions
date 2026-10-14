# 命名：not_built
# 説明：【追加：2026-10-09 ルブラ編】第三章の建築が入っていないワールド：何も置かず、進み具合を 432 に戻す（塔へ行く前の所）
# 実行条件：セレスタ次元
# >/function neofunction:system/rubra/d3/setup_in
# =/function neofunction:system/rubra/d3/not_built

# 内容
tellraw @a[gamemode=creative] {"text":"第三章：このワールドには第三章の建築（塔の下の階段・零の揺籃）が入っていないので、目印は置きませんでした","color":"red"}
tellraw @a {"text":"（第三章「零の揺籃」の迷宮は準備中です）","color":"gray"}
execute if score #temp main_story matches 433 run scoreboard players set #temp main_story 432
