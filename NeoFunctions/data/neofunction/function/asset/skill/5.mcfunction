# 命名：5
# 説明：マナハウリング
# 説明：dpm200 攻撃力20~200 消費SP20~100 dps:1~2
# >
# =/function neofunction:asset/skill/5


# 内容
# 攻撃力の10倍のダメージを与える
execute store result storage neofunction:player atk float 10 run data get entity @s attributes[{id:"minecraft:attack_damage"}].base

# 目線先3m地点から半径3mを対象
execute as @s at @s anchored eyes positioned ^ ^ ^3 as @e[distance=..3,tag=enemy] run function neofunction:system/dmg/generic with storage neofunction:player

# 演出
execute anchored eyes run function neofunction:asset/particle/4
execute at @s run particle sweep_attack ^ ^ ^2.5 0 0 0 1 50 normal
playsound minecraft:entity.iron_golem.attack master @a[distance=..8] ~ ~ ~ 1 0.5
playsound minecraft:item.shield.break master @a[distance=..8] ~ ~ ~ 0.5 0.5


# 割合SP消費：最大SPの20%消費
scoreboard players operation @s SP -= @s SP20p

# クールタイム
# scoreboard players add @s CT 2

# ゲージ 半分/4 くらいの空腹
# effect give @s hunger 1 10 false