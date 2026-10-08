# 命名：dead
# 説明：【追加：2026-10-08 ルブラ編】頭が崩れて、星の血晶（1868）を落とす。本体を消して（tag del）、倒したあとの場面（416）へ
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_worm/dying
# =/function neofunction:entity/skill/boss/rubra_worm/dead

# 内容
data modify storage neofunction:rubra worm.state set value "dead"
particle minecraft:falling_dust{block_state:"minecraft:black_concrete"} ~ ~1.3 ~ 1.2 1.2 1.2 0 80 normal
particle minecraft:dust{color:[1.0,0.2,0.15],scale:1.5} ~ ~1.3 ~ 0.8 0.8 0.8 0 40 normal
playsound minecraft:block.sculk_catalyst.bloom hostile @a[distance=..64] ~ ~ ~ 2 0.5
kill @e[tag=rubra_worm_part]
loot spawn ~ ~1 ~ loot neofunction:item/1868
tag @s add del
function neofunction:system/adv/tick/quest/40/d1/416
