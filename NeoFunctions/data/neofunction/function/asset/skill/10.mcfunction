# 命名：10
# 説明：パス：=/function neofunction:asset/skill/10
# 説明：エンティティ処理
# >
# =/function neofunction:asset/skill/10




# 攻撃力の10倍のダメージを与える
execute store result storage neofunction:player atk double 10 run data get entity @s attributes[{id:"minecraft:attack_damage"}].base
execute as @s at @s as @e[distance=0.1..8,sort=nearest,limit=1] run function neofunction:system/dmg/generic with storage neofunction:player

# 演出
execute at @s run particle sweep_attack ^ ^ ^2.5 0 0 0 1 50 normal
playsound minecraft:entity.iron_golem.attack master @a[distance=..8] ~ ~ ~ 1 0.5
playsound minecraft:item.shield.break master @a[distance=..8] ~ ~ ~ 0.5 0.5

# 消費SP
scoreboard players remove @s SP 25

# クールタイム
#scoreboard players add @s CT 2

# ゲージ 半分/4 くらいの空腹
# effect give @s hunger 1 10 false