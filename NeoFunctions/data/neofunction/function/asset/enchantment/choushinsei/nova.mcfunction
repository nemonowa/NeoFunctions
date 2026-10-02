# 命名：nova
# 説明：炸裂。星を消し、空中に火球・閃光・光の粒の殻を出して、爆心を地面へ下ろし、衝撃波を始める
# 実行条件：爆心として、空中の位置で（#cur に番号）
# >/function neofunction:asset/enchantment/choushinsei/tick
# =/function neofunction:asset/enchantment/choushinsei/nova


# 内容
execute as @e[type=item_display,tag=neo.nk_core] if score @s neo.nk_id = #cur neo.nk_id run kill @s
execute positioned ~ ~-1 ~ run function neofunction:asset/enchantment/core/fireball
particle minecraft:flash{color:[1.0,1.0,1.0,1.0]} ~ ~1 ~ 8 8 8 0 30 force
particle minecraft:flash{color:[1.0,0.5,0.9,1.0]} ~ ~1 ~ 4 4 4 0 10 force
particle minecraft:end_rod ~ ~1 ~ 0 0 0 3.5 900 force
particle minecraft:explosion_emitter ~ ~1 ~ 6 6 6 0 25 force
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 40 0.3
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 40 0.5
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 40 0.5
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 40 0.6
playsound minecraft:entity.wither.death master @a ~ ~ ~ 40 0.7
execute as @a if score @s neo.nk_id = #cur neo.nk_id run title @s actionbar {"text":"超新星","color":"white","bold":true}
summon minecraft:marker ~ ~ ~ {Tags:["neo.nk_air"]}
scoreboard players operation @e[type=marker,tag=neo.nk_air] neo.nk_id = #cur neo.nk_id
scoreboard players set #g neo.nk_tmp 0
function neofunction:asset/enchantment/core/ground
scoreboard players set @s neo.nk_r 0
