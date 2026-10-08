# 命名：zone
# 説明：【追加：2026-10-08 ルブラ編】紅脈の坑の中で、場所とミラの近さで物語を進める（1 秒ごと）
# 実行条件：実行者 プレイヤー（迷宮の範囲の中）
# >/function neofunction:system/adv/tick/dungeon/rubra1
# =/function neofunction:system/adv/tick/quest/40/d1/zone

# 内容
function neofunction:system/adv/tick/quest/40/d1/busy_check
execute if data storage neofunction:rubra {busy:1b} run return 0
# 411：三の層でミラに追いつく
execute if score #temp main_story matches 411 if entity @s[y=-64,dy=94] if entity @e[type=villager,tag=rubra_mira,distance=..6] run return run function neofunction:system/adv/tick/quest/40/d1/412
# 412：星の台の間でミラに追いつく（一度だけ）
execute if score #temp main_story matches 412 unless data storage neofunction:rubra d1{l4talk:1b} if entity @s[y=10,dy=12] if entity @e[type=villager,tag=rubra_mira,distance=..6] run return run function neofunction:system/adv/tick/quest/40/d1/l4talk
# 413：大空洞に降りた
execute if score #temp main_story matches 413 if entity @s[y=-64,dy=28] run return run function neofunction:system/adv/tick/quest/40/d1/414
# 414：一度負けて（誰もいなくなって）戻ってきたとき、すぐに戦いをやり直す
execute if score #temp main_story matches 414 if data storage neofunction:rubra d1{retry:1b} if entity @s[y=-64,dy=28] run return run function neofunction:system/adv/tick/quest/40/d1/boss_start
# 415：戦いの途中なのにボスがいない（倒れ方の取りこぼし）→ 倒したことにする
execute if score #temp main_story matches 415 if entity @s[y=-64,dy=28] unless entity @e[type=ravager,tag=rubra_worm] run return run function neofunction:entity/skill/boss/rubra_worm/defeated
