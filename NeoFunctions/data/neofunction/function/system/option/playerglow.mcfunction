# 命名：プレイヤー発光トグル
# 説明：playerglow 切り替え処理
# >
# =/function neofunction:system/option/playerglow

#内容
scoreboard players add playerglow temp 1
execute if score playerglow temp matches 1 run tellraw @a [{"selector":"@p","color":"white","bold":true,"underlined":true},{"text":" が"},{"text":"プレイヤー発光","color":"gold"},{"text":"のオプションを"},{"text":"有効化","color":"green"},{"text":"しました！"}]
execute if score playerglow temp matches 2 run tellraw @a [{"selector":"@p","color":"white","bold":true,"underlined":true},{"text":" が"},{"text":"プレイヤー発光","color":"gold"},{"text":"のオプションを"},{"text":"無効化","color":"dark_aqua"},{"text":"しました！"}]
execute if score playerglow temp matches 2 run scoreboard players set playerglow temp 0