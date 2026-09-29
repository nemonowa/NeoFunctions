# 命名：beeboosthigh2
# 説明：指定tagを持つエンティティを10秒毎に対象
# 説明：条件: 5s
# >/function neofunction:entity/skill/clock/5s
# =/function neofunction:entity/skill/beeboosthigh2

execute as @e[tag=temp1,type=bee] at @s run playsound entity.vex.charge record @a[distance=..32] ~ ~ ~ 2.0 0.5

execute as @e[tag=temp1,type=bee] run function neofunction:entity/skill/motion/high_speed_nogravity

tag @e[tag=temp1,type=bee] remove temp1

say 2