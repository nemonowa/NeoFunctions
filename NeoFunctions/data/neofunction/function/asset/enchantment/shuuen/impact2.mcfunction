# 命名：impact2
# 説明：炸裂の演出。太陽を消し、火球・閃光・轟音を出し、衝撃波を始める
# 実行条件：爆心として、地面の位置で（temp の #nk_cur に番号）
# >/function neofunction:asset/enchantment/shuuen/impact
# =/function neofunction:asset/enchantment/shuuen/impact2


# 内容
execute as @e[type=item_display,tag=neo.nk_sun] if score @s neo.nk_id = #nk_cur temp run kill @s
function neofunction:asset/enchantment/core/fireball
particle minecraft:flash{color:[1.0,1.0,1.0,1.0]} ~ ~3 ~ 6 6 6 0 25 force
particle minecraft:explosion_emitter ~ ~3 ~ 8 4 8 0 30 force
particle minecraft:end_rod ~ ~3 ~ 0 0 0 2 500 force
particle minecraft:lava ~ ~1 ~ 10 1 10 0 300 force
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 40 0.3
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 40 0.5
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 40 0.5
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 40 0.5
playsound minecraft:entity.wither.death master @a ~ ~ ~ 40 0.5
scoreboard players set #nk_r temp 0
