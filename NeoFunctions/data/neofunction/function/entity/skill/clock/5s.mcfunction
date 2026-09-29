# 命名：5s
# 説明：指定tagを持つエンティティを5秒毎に対象
# 説明：条件: 5s
# >/function neofunction:system/clock/5_second.mcfunction
# =/function neofunction:entity/skill/clock/5s

# 全体

#トライデント5秒おきに50%でなげる。　#敵リスト Pairate of Cerestanian
execute as @e[tag=tridentthrow5s50] as @s[predicate=neofunction:random_chance/50] at @s if entity @a[distance=..16,gamemode=!spectator] run function neofunction:entity/skill/throw_trident_5s_0.5

# ジャンプ
execute if predicate neofunction:random_chance/70 run execute as @a at @s as @e[tag=enemy,distance=..16,sort=random,limit=3] run function neofunction:entity/skill/jump

#5秒毎にトライデントを投げる　#敵リスト　《Gran Almirante Salazar》
execute as @e[tag=elitetridentthrow] run function neofunction:entity/skill/elite_throw_trident


# 5sごとに80%でプレイヤーに突進
execute as @e[tag=rush,predicate=neofunction:has_target] if predicate neofunction:random_chance/80 at @s run function neofunction:entity/skill/rush

# skillchecking マルチで人数分実行されないようにするため
execute as @a at @s as @e[distance=..64,tag=!skillchecking] at @s run tag @s add skillchecking
execute as @e[tag=skillchecking] at @s run function neofunction:entity/skill/clock/5s-1
tag @e[tag=skillchecking] remove skillchecking

#ヴァレリカを5秒毎に最寄りのプレイヤーから遠ざかるように射出
execute as @e[tag=backstep] at @s if entity @p[distance=..6] run function neofunction:entity/skill/motion/1500backstep

#太陽の神殿のスポナー無くなったら道が開くやつ
execute as @e[tag=sunshrin] at @s unless entity @e[tag=sunspawner,distance=..40,type=minecraft:spawner_minecart] run function neofunction:entity/skill/sunshrin

#attract
execute as @e[tag=attract] at @s run function neofunction:asset/data/attract

#ペットは自動的に近くの敵に敵対
execute as @e[tag=familiar] at @s unless data entity @s AngryAt run damage @s 0.0001 neofunction:alternate by @e[tag=enemy,limit=1,sort=nearest,distance=..6]
stopsound @a neutral entity.wolf.hurt
stopsound @a neutral entity.iron_golem.hurt
stopsound @a neutral entity.snow_golem.hurt

# ペット1体ずつ、本人のUUIDと照合して追従させる
execute if entity @e[tag=familiar] as @a at @s run function neofunction:asset/skill/tamer/follow_check_owner


