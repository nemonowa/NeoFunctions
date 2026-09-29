# 命名：203-1
# 説明：空脚
# 説明：地面に叩きつけた斬撃の衝撃を利用して前方へ跳躍し着地時にダメージを与える技。攻防一体の間合い操作として用いられる。（SP10消費）
# >
# =/function neofunction:asset/skill/203-1

# ループ
execute as @a[tag=skill203,nbt={OnGround:1b}] at @s run playsound minecraft:entity.generic.explode record @s ~ ~ ~ 1 1.2 0.01
execute as @a[tag=skill203,nbt={OnGround:1b}] at @s run execute as @e[distance=..5,tag=enemy] run damage @s 10 minecraft:explosion by @p[tag=skill203]
execute as @a[tag=skill203,nbt={OnGround:1b}] at @s run particle minecraft:explosion ~ ~-0.2 ~ 0.1 0.1 0.1 1 10 force
execute as @a[tag=skill203,nbt={OnGround:1b}] at @s run return run tag @a[tag=skill203] remove skill203
schedule function neofunction:asset/skill/203-1 1t replace