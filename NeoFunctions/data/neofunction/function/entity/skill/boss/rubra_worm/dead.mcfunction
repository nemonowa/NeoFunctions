# 命名：dead
# 説明：【追加：2026-10-08 ルブラ編】頭が崩れて、星の血晶（1905）を落とす。本体を消して（tag del）、倒したあとの場面（416）へ
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_worm/dying
# =/function neofunction:entity/skill/boss/rubra_worm/dead

# 内容
data modify storage neofunction:rubra worm.state set value "dead"
particle minecraft:falling_dust{block_state:"minecraft:black_concrete"} ~ ~1.3 ~ 1.2 1.2 1.2 0 80 normal
particle minecraft:dust{color:[1.0,0.2,0.15],scale:1.5} ~ ~1.3 ~ 0.8 0.8 0.8 0 40 normal
playsound minecraft:block.sculk_catalyst.bloom hostile @a[distance=..64] ~ ~ ~ 2 0.5
kill @e[tag=rubra_worm_part]
loot spawn ~ ~1 ~ loot neofunction:item/1905
tag @s add del
# 【追加：2026-10-14】戦いのあいだ離れていたミラが戻ってくる
execute in neodimension:ceresta_festa run tp @e[type=villager,tag=rubra_mira] 822.5 -40 3260.5 135 0
execute in neodimension:ceresta_festa run particle minecraft:end_rod 822.5 -39 3260.5 0.4 0.8 0.4 0.05 30 normal
# 【追加：2026-10-14】報酬（宝箱・帰還ゲート）を出す
function neofunction:system/rubra/d1/reward_build
function neofunction:system/adv/tick/quest/40/d1/416
