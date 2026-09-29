# 命名：shield
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:consume_item/.all
# =/function neofunction:system/adv/player_hurt_entity/shield

# 内容
execute as @e[type=!player,limit=1,sort=nearest,distance=..64,tag=hit,nbt={equipment:{offhand:{id:"minecraft:shield"}}}] run data merge entity @s {active_effects:[{id:"minecraft:resistance",amplifier:1b,duration:20s},{id:"minecraft:slowness",amplifier:1b,duration:20s}],attributes:[{id:"minecraft:knockback_resistance",base:100.0d}]}
playsound minecraft:item.shield.block master @a[distance=..16] ~ ~ ~ 1 0.6 1


# 再使用のために進捗剥奪
# advancement revoke @s only neofunction:player_hurt_entity/shield