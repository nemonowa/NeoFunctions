# 命名：tick
# 説明：紅脈の坑（第一章の迷宮）の範囲にいるプレイヤーの 1 秒ごとの処理
# 説明：暗闇と星核の欠片の灯り、足跡、歌、星の台の光の筋、トロッコの用意、物語の区切り
# 実行条件：実行者 プレイヤー（迷宮の範囲 x770〜880・y-64〜49・z3230〜3305 の中）
# >/function neofunction:system/adv/tick/dungeon/rubra1
# =/function neofunction:system/world/ceresta/rubra/d1/tick

# 内容
# 三の層より下（y30 以下）は真っ暗。オフハンドの星核の欠片で照らす
execute if entity @s[y=-64,dy=94] run function neofunction:system/world/ceresta/rubra/d1/tick/dark
# 足跡（第一章の 410〜412 のあいだだけ）
execute if score #temp main_story matches 410..412 run function neofunction:system/world/ceresta/rubra/d1/tick/footprint
# 歌（三の層〜大空洞）
execute if entity @s[y=-64,dy=94] run function neofunction:system/world/ceresta/rubra/d1/tick/song
# 星の台の間：光の筋とトロッコ
execute if entity @s[y=10,dy=12] run function neofunction:system/world/ceresta/rubra/d1/tick/l4
# 作り直しを今のワールドに一度だけ反映する
execute unless data storage neofunction:rubra {d1v:7} run function neofunction:system/world/ceresta/rubra/d1/upgrade_20261014
# 物語の区切り
function neofunction:system/adv/tick/quest/40/d1/zone
