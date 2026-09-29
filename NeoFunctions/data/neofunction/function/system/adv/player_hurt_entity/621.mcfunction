# 命名：621
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:player_hurt_entity/621
# =/function neofunction:system/adv/player_hurt_entity/621



## 内容
#耐性を持ってなかったら抜ける
execute as @e[tag=living,nbt=!{active_effects:[{id:"minecraft:resistance",amplifier:4b}]}] run return 0
#周囲にとりまきがいたら抜ける
execute as @e[tag=living] at @s if entity @e[distance=..32,nbt={DeathLootTable:"neofunction:asset/summon/201"}] run return 0
execute as @e[tag=living] at @s if entity @e[distance=..32,nbt={DeathLootTable:"neofunction:asset/summon/202"}] run return 0
execute as @e[tag=living] at @s if entity @e[distance=..32,nbt={DeathLootTable:"neofunction:asset/summon/203"}] run return 0
#とりまきがいなかったら耐性を解除して2レベルを与え直す、かつサウンド再生
execute as @e[tag=living] at @s run effect clear @s resistance
execute as @e[tag=living] at @s run effect give @s minecraft:resistance infinite 2 true
execute as @e[tag=living] at @s run playsound item.totem.use record @a[distance=..32] ~ ~ ~ 0.1 0.5 0.1