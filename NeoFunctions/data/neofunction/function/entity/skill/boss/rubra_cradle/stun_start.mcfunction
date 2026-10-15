# 命名：stun_start
# 説明：欠片がすべて無くなった：守り（耐性）が解け、セレンが床に落ちて 8 秒（160 tick）気を失う。そのあいだは攻撃が通り、セレンは攻撃しない
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_cradle/lose
# =/function neofunction:entity/skill/boss/rubra_cradle/stun_start

# 内容
data modify storage neofunction:rubra cradle.stun set value 160
data modify storage neofunction:rubra cradle.arrow set value 0
kill @e[type=marker,tag=rubra_star]
effect clear @s minecraft:resistance
data merge entity @s {NoGravity:0b}
particle minecraft:dust{color:[0.35,0.6,1.0],scale:2.0} ~ ~1.5 ~ 1 1.5 1 0 80 normal
playsound minecraft:entity.evoker.hurt hostile @a[distance=..40] ~ ~ ~ 2 0.6
playsound minecraft:block.glass.break hostile @a[distance=..40] ~ ~ ~ 2 0.5
execute if data storage neofunction:rubra cradle{stunmsg:0b} run tellraw @a[distance=..40] [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「欠片が無くなって、師匠の守りが解けた……！ 今なら届きます、旅人さん！」"}]
data modify storage neofunction:rubra cradle.stunmsg set value 1b
