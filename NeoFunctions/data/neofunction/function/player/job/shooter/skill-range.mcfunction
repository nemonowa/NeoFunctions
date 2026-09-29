# 命名：skill-range
# 説明：発動時、周囲16mの敵に30sの炎上状態を付与する。（SP10消費）
# >/function neofunction:system/adv/player_hurt_entity/130
# =/function neofunction:player/job/shooter/skill-range


# 
# execute as @e[tag=enemy,limit=1,sort=nearest,distance=0.1..64,nbt={HurtTime:10s}] at @s run particle item{item:"minecraft:nether_wart"} ~ ~1 ~ 0.2 0.3 0.2 0.25 60 force @a[distance=..64]
loot give @s loot neofunction:item/130

# 矢への個別処理
# execute as @s[nbt={item:{components:{"minecraft:potion_contents":{custom_color:7143676}}}}] run data merge entity @s {damage:15d}


# SP消費：
scoreboard players remove @s SP 2




