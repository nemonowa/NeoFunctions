# 命名：impact
# 説明：着弾。火球・閃光・火花・轟音を出し、衝撃波を始める
# 実行条件：爆心として（#cur に番号）
# >/function neofunction:asset/enchantment/tentsui/tick
# =/function neofunction:asset/enchantment/tentsui/impact


# 内容
function neofunction:asset/enchantment/core/fireball
particle minecraft:flash{color:[1.0,1.0,1.0,1.0]} ~ ~2 ~ 4 4 4 0 12 force
particle minecraft:explosion_emitter ~ ~2 ~ 6 3 6 0 20 force
particle minecraft:end_rod ~ ~2 ~ 0 0 0 1.5 300 force
particle minecraft:lava ~ ~1 ~ 8 1 8 0 200 force
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 30 0.5
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 30 0.6
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 30 0.7
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 30 0.5
execute as @a if score @s neo.nk_id = #cur neo.nk_id run title @s clear
scoreboard players set @s neo.nk_r 0
