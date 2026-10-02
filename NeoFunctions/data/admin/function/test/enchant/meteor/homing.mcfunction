# 命名：homing
# 説明：突進中。相手の方へ向き直り、相手に届くか時間切れで爆発（段階 4）へ
# 実行条件：段階 3 のプレイヤー（毎 tick。このあとエンチャントが少し勢いを足す）
# >/enchantment neofunction:test/meteor
# =/function admin:test/enchant/meteor/homing


# 内容
scoreboard players remove @s neo.leapt 1
particle minecraft:flame ~ ~0.5 ~ 0.2 0.3 0.2 0.02 6
particle minecraft:large_smoke ~ ~0.5 ~ 0.1 0.2 0.1 0 2
execute if entity @e[tag=neo.leap_target,distance=..2.5] run return run scoreboard players set @s neo.leap 4
execute if score @s neo.leapt matches ..0 run return run scoreboard players set @s neo.leap 4
rotate @s facing entity @e[tag=neo.leap_target,sort=nearest,limit=1] feet
