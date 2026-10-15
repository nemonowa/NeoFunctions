# 命名：rubra3
# 説明：零の揺籃（第三章の迷宮）の範囲にいるプレイヤーの 1 秒ごとの処理
# 説明：浮遊の間は重さが失われる。闇の間は光が奪われ、守り石（1917）をオフハンドに持つと身のまわりが見える。影は守り石の光の中でだけ斬れる
# 実行条件：実行者 プレイヤー（零の揺籃の範囲の中）
# >/advancement neofunction:tick/dungeon/rubra3
# =/function neofunction:system/adv/tick/dungeon/rubra3

# 内容
# 守り石の光（オフハンド）
tag @s remove rubra_stonelit
execute if items entity @s weapon.offhand minecraft:heart_of_the_sea[minecraft:custom_model_data={floats:[1917.0f]}] run tag @s add rubra_stonelit
execute if entity @s[tag=rubra_stonelit] run particle minecraft:dust{color:[0.35,0.6,1.0],scale:1.0} ~ ~1 ~ 1.5 1 1.5 0 8 normal
# 浮遊
execute if entity @e[type=marker,tag=rubra_float,distance=..16] run function neofunction:system/adv/tick/dungeon/rubra3/float
# 闇と影
execute if entity @e[type=marker,tag=rubra_dark,distance=..14] run function neofunction:system/adv/tick/dungeon/rubra3/dark
# 物語の区切り
function neofunction:system/adv/tick/quest/40/d3/zone
# 結晶の封（守り石で引き剥がす練習）。セレンを助けたあと（438 から）は置かない
execute if score #temp main_story matches ..437 run function neofunction:system/rubra/d3/xtal/check
# 球の広間の作り直しを、今のワールドに一度だけ反映する
execute unless data storage neofunction:rubra {d3v:1} positioned 949 -44 3296 if entity @s[distance=..48] run function neofunction:system/rubra/d3/upgrade_20261014
