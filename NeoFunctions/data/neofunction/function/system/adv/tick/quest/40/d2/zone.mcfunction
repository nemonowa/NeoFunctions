# 命名：zone
# 説明：涸れ泉の聖堂の中で、場所で物語を進める（1 秒ごと）
# 実行条件：実行者 プレイヤー（聖堂の範囲の中）
# >/function neofunction:system/adv/tick/dungeon/rubra2
# =/function neofunction:system/adv/tick/quest/40/d2/zone

# 内容
function neofunction:system/adv/tick/quest/40/d1/busy_check
execute if data storage neofunction:rubra {busy:1b} run return 0
# 424：入口の広間でミラに追いつく → 425
execute if score #temp main_story matches 424 if entity @e[type=villager,tag=rubra_mira,distance=..7] run return run function neofunction:system/adv/tick/quest/40/d2/425
# 三つの水門の間に初めて入った（真ん中の輪の近く）：仕組みの説明（一度だけ）
execute if score #temp main_story matches 425 unless data storage neofunction:rubra d2{hint_center:1b} if entity @e[type=interaction,tag=rubra_valve_n,distance=..7] run return run function neofunction:system/adv/tick/quest/40/d2/hint_center
# 425：壁画の間（手記の台の近く）→ 426
execute if score #temp main_story matches 425 if entity @e[type=interaction,tag=rubra_pick_j2,distance=..7] run return run function neofunction:system/adv/tick/quest/40/d2/426
# 426：黒い水を押し流してから番人の間へ → 427（ボス戦）。負けて戻ってきたときも
execute if score #temp main_story matches 426 if data storage neofunction:rubra d2{flushed:1b} if entity @e[type=marker,tag=rubra_keeper_center,distance=..13] run return run function neofunction:system/adv/tick/quest/40/d2/427
# 427：戦いの途中なのに番人がいない（倒れ方の取りこぼし）→ 倒したことにする
execute if score #temp main_story matches 427 if data storage neofunction:rubra keeper{state:"fight"} unless entity @e[type=iron_golem,tag=rubra_keeper] as @e[type=marker,tag=rubra_keeper_center,limit=1] at @s run return run function neofunction:entity/skill/boss/rubra_keeper/defeated
