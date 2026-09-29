# 命名：3s
# 説明：指定tagを持つエンティティを1秒毎に対象
# 説明：条件: 3s
# >/function neofunction:system/clock/3_second.mcfunction
# =/function neofunction:entity/skill/clock/3s

# 全体
execute as @a at @e[tag=attract,distance=..64] run function neofunction:entity/skill/motion/500

# 椅子
# 0.5mまで近づくと座れる（tagのエンティティの上にライドする）。
execute as @a at @s if entity @e[tag=chair,distance=..0.8] run ride @s mount @e[tag=chair,sort=nearest,limit=1]

# ボート捕獲対策
execute as @a at @s as @e[type=#neofunction:vehicle,distance=..32] if predicate neofunction:downer on passengers as @s[tag=elite] on vehicle run function neofunction:entity/skill/boat
execute as @a at @s as @e[tag=elite,type=!#neofunction:spider,distance=..32] at @s if block ~ ~ ~ minecraft:cobweb run function neofunction:entity/skill/web

# 装飾用ディスプレイ削除
execute as @a at @s as @e[tag=block,distance=..64] at @s if block ~ ~ ~ minecraft:air run function neofunction:entity/skill/block

# skillchecking マルチで人数分実行されないようにするため
execute as @a at @s as @e[distance=..64,tag=!skillchecking] at @s run tag @s add skillchecking
execute as @e[tag=skillchecking] at @s run function neofunction:entity/skill/clock/3s-1
tag @e[tag=skillchecking] remove skillchecking


# エキリブリアムが水精霊を発射
execute as @e[tag=ekiriwater] at @s as @e[type=vex,nbt={DeathLootTable:"neofunction:asset/summon/664"},limit=1,sort=random,distance=..32] at @s run function neofunction:entity/skill/boss/ekiriburiamu/water_elemental

