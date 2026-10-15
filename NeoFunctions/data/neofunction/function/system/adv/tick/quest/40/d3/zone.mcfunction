# 命名：zone
# 説明：零の揺籃の中で、場所とミラの近さで物語を進める（1 秒ごと）
# 実行条件：実行者 プレイヤー（零の揺籃の範囲の中）
# >/function neofunction:system/adv/tick/dungeon/rubra3
# =/function neofunction:system/adv/tick/quest/40/d3/zone

# 内容
function neofunction:system/adv/tick/quest/40/d1/busy_check
execute if data storage neofunction:rubra {busy:1b} run return 0
# 一つ目の結晶の封のそばで、ミラが守り石の使い方を口にする（一度だけ）
execute if score #temp main_story matches 433..437 unless data storage neofunction:rubra d3.xt{m1:1b} unless data storage neofunction:rubra d3.xt{s1:1b} if entity @e[type=marker,tag=rubra_xseal,tag=rubra_xtal_1,distance=..9] run function neofunction:system/rubra/d3/xtal/hint
# 433：浮遊の間でミラに追いつく → 434
execute if score #temp main_story matches 433 if entity @e[type=villager,tag=rubra_mira,distance=..7] run return run function neofunction:system/adv/tick/quest/40/d3/434
# 434：闇の間に入った → 435
execute if score #temp main_story matches 434 if entity @e[type=marker,tag=rubra_dark,distance=..14] run return run function neofunction:system/adv/tick/quest/40/d3/435
# 435：反転の間の最初の部屋 → 436
execute if score #temp main_story matches 435 if entity @e[type=marker,tag=rubra_inv_spawn_1,distance=..6] run return run function neofunction:system/adv/tick/quest/40/d3/436
# 436：球の広間 → 437（ボス戦）。負けて戻ってきたときも
execute if score #temp main_story matches 436 if entity @e[type=marker,tag=rubra_arena_center,distance=..14] run return run function neofunction:system/adv/tick/quest/40/d3/437
# 437：戦いの途中なのに本体がいない（取りこぼし）→ 正気に戻ったことにする
execute if score #temp main_story matches 437 if data storage neofunction:rubra cradle{state:"fight"} unless entity @e[type=evoker,tag=rubra_eater] as @e[type=marker,tag=rubra_arena_center,limit=1] at @s run return run function neofunction:system/adv/tick/quest/40/d3/438
