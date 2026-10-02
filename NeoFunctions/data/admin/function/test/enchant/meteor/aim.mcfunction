# 命名：aim
# 説明：16 ブロック以内で一番近い生き物を狙い、そちらを向く。いなければ中止
# 実行条件：上昇が終わったプレイヤー
# >/function admin:test/enchant/meteor/rise
# =/function admin:test/enchant/meteor/aim


# 内容
execute as @e[distance=..16,type=!player,tag=!friendly] if data entity @s HurtTime run tag @s add neo.leap_cand
tag @e[tag=neo.leap_cand,sort=nearest,limit=1] add neo.leap_target
tag @e[tag=neo.leap_cand] remove neo.leap_cand
execute unless entity @e[tag=neo.leap_target,distance=..16] run return run function admin:test/enchant/meteor/cancel
rotate @s facing entity @e[tag=neo.leap_target,sort=nearest,limit=1] feet
scoreboard players set @s neo.leap 2
scoreboard players set @s neo.leapt 20
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.6
execute at @e[tag=neo.leap_target,sort=nearest,limit=1] run particle minecraft:flash{color:[1.0,0.4,0.0,1.0]} ~ ~1 ~ 0 0 0 0 1
