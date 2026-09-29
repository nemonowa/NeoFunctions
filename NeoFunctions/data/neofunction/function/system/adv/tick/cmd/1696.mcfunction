# 命名：1696
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/entity_scores/horse
# =/function neofunction:system/adv/tick/cmd/1696

particle flame ^ ^ ^2 1 1 1 0 40
execute as @e[tag=enemy,distance=..4] run damage @s 0.1 in_fire by @e[tag=item1696,limit=1,sort=nearest]
execute as @e[tag=enemy,distance=..4] run playsound entity.generic.explode player @a[distance=..8] ~ ~ ~ 1 1
execute as @e[tag=enemy,distance=..4] run particle explosion_emitter ~ ~ ~ 0 0 0 0 1
execute as @e[tag=enemy,distance=..4] at @s facing entity @e[tag=item1696,limit=1,sort=nearest] feet facing ^ ^ ^-1 rotated ~ -25 run function neofunction:entity/skill/motion/custom_speed_straight {Speed:3}