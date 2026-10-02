# 命名：burst
# 説明：反転・炸裂。球を消し、白い閃光と火球を球の位置に出し、吸い込んだものを全方向へ射出し、光の柱を立て、衝撃波を始める
# 実行条件：爆心として（#cur に番号）
# >/function neofunction:asset/enchantment/reiten/tick
# =/function neofunction:asset/enchantment/reiten/burst


# 内容
execute as @e[type=item_display,tag=neo.nk_orb] if score @s neo.nk_id = #cur neo.nk_id run kill @s
execute positioned ~ ~10 ~ run function neofunction:asset/enchantment/core/fireball
particle minecraft:flash{color:[1.0,1.0,1.0,1.0]} ~ ~12 ~ 8 8 8 0 30 force
particle minecraft:end_rod ~ ~12 ~ 0 0 0 3 600 force
particle minecraft:explosion_emitter ~ ~12 ~ 6 6 6 0 25 force
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 40 0.3
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 40 0.4
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 40 0.5
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 40 0.7
execute as @a if score @s neo.nk_id = #cur neo.nk_id run tag @s add neo.nk_src
execute as @e[tag=neo.nk_pulled] run function neofunction:asset/enchantment/reiten/launch
tag @a[tag=neo.nk_src] remove neo.nk_src
summon minecraft:item_display ~ ~70 ~ {Tags:["neo.nk_fx","neo.nk_pillar","neo.nk_new2"],item:{id:"minecraft:sea_lantern",count:1},brightness:{sky:15,block:15},view_range:8f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,140f,3f]}}
summon minecraft:item_display ~ ~70 ~ {Tags:["neo.nk_fx","neo.nk_pillar","neo.nk_new2"],item:{id:"minecraft:white_stained_glass",count:1},brightness:{sky:15,block:15},view_range:8f,transformation:{left_rotation:{angle:0.785f,axis:[0f,1f,0f]},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[6f,140f,6f]}}
scoreboard players operation @e[tag=neo.nk_new2] neo.nk_id = #cur neo.nk_id
tag @e[tag=neo.nk_new2] remove neo.nk_new2
scoreboard players set @s neo.nk_r 0
