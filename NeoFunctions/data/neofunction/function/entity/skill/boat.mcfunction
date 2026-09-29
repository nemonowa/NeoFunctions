# 命名：boat
# 説明：ボートなどで捕獲される対策(実行者はボート
# 説明：team=redで騎乗しているエンティティが3sごとにボートを壊す
# >/function neofunction:clock/3_second
# =/function neofunction:entity/skill/boat


execute at @s run playsound minecraft:entity.zombie.break_wooden_door record @a[distance=..16] ~ ~ ~ 0.5 0.5 0.5
execute as @s run damage @s 99.9 minecraft:mob_attack


