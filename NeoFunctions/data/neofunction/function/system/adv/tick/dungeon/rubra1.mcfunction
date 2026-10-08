# 命名：rubra1
# 説明：【追加：2026-10-08 ルブラ編】紅脈の坑（第一章の迷宮）の範囲にいるプレイヤーの 1 秒ごとの処理
# 説明：暗闇と星核の欠片の灯り、足跡、歌、砂の亡者、星の台の光の筋、トロッコの用意、物語の区切り
# 実行条件：実行者 プレイヤー（迷宮の範囲 x770〜880・y-64〜49・z3230〜3305 の中）
# >/advancement neofunction:tick/dungeon/rubra1
# =/function neofunction:system/adv/tick/dungeon/rubra1

# 内容
# 三の層より下（y30 以下）は真っ暗。オフハンドの星核の欠片で照らす
execute if entity @s[y=-64,dy=94] run function neofunction:system/adv/tick/dungeon/rubra1/dark
# 足跡（第一章の 410〜412 のあいだだけ）
execute if score #temp main_story matches 410..412 run function neofunction:system/adv/tick/dungeon/rubra1/footprint
# 歌（三の層〜大空洞）
execute if entity @s[y=-64,dy=94] run function neofunction:system/adv/tick/dungeon/rubra1/song
# 砂の亡者（三の層）
execute if entity @s[y=22,dy=8] run function neofunction:system/adv/tick/dungeon/rubra1/sanddead
# 星の台の間：光の筋とトロッコ
execute if entity @s[y=10,dy=12] run function neofunction:system/adv/tick/dungeon/rubra1/l4
# 大空洞：トロッコ
execute if entity @s[y=-64,dy=30] run function neofunction:system/adv/tick/dungeon/rubra1/cavern
# 物語の区切り
function neofunction:system/adv/tick/quest/40/d1/zone
