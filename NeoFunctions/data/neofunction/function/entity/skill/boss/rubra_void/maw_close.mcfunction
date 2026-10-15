# 命名：maw_close
# 説明：顎が閉じて、黒い心臓がまた浮かび上がる（今のフェーズ hp3 の数：1 → 4 つ、2 → 6 つ、3 → 8 つ）。攻撃は通らなくなる（耐性 IV）
# 説明：開いているあいだに体力を削って次のフェーズへ進んだとき（form3 が先に hp3 を 1 つ増やす）と、15 秒で削りきれなかったとき（同じフェーズをもう一度）に呼ぶ
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/maw_tick
# >/function neofunction:entity/skill/boss/rubra_void/maw_next
# =/function neofunction:entity/skill/boss/rubra_void/maw_close

# 内容
data modify storage neofunction:rubra fin merge value {open:0,vul:0b,ot:0}
effect clear @s minecraft:resistance
effect give @s minecraft:resistance infinite 4 true
execute as @e[type=block_display,tag=rubra_maw_up] at @s run tp @s ~ ~-6 ~
execute as @e[type=block_display,tag=rubra_maw_down] at @s run tp @s ~ ~6 ~
execute if data storage neofunction:rubra fin{hp3:1} positioned 921.5 214 3282.5 run function neofunction:entity/skill/boss/rubra_void/hearts4
execute if data storage neofunction:rubra fin{hp3:2} positioned 921.5 214 3282.5 run function neofunction:entity/skill/boss/rubra_void/hearts6
execute if data storage neofunction:rubra fin{hp3:3} positioned 921.5 214 3282.5 run function neofunction:entity/skill/boss/rubra_void/hearts8
playsound minecraft:block.iron_door.close hostile @a[distance=..160] ~ ~ ~ 4 0.4
playsound minecraft:entity.warden.roar hostile @a[distance=..160] ~ ~ ~ 3 0.7
particle minecraft:squid_ink ~ ~ ~ 6 3 6 0.1 200 force @a[distance=..160]
particle minecraft:sculk_soul ~ ~-4 ~ 4 4 4 0.1 150 force @a[distance=..160]
