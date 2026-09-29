# 命名：1s
# 説明：指定tagを持つエンティティを1秒毎に対象
# 説明：条件: 1s
# >/function neofunction:system/clock/1_second.mcfunction
# =/function neofunction:entity/skill/clock/1s

# 処理の変更により無条件で叩いてもヨシ
function neofunction:asset/bossbar/hide

# 椅子：5mまで近づくとパーティクルがでる。乗るのは3s処理に
execute as @a at @s as @e[tag=chair,distance=..5] at @s run particle minecraft:dust{color:[1,1,1],scale:0.5} ~ ~ ~ 0 0 0 0 1

# 1m以内に2体以上いると消える。
execute as @e[tag=limit] at @s if entity @e[tag=limit,distance=0.5..1.5] run tag @e[tag=limit,distance=..1.5] add del

# 時を刻む長針
execute as @e[tag=clocker_24,limit=1] at @s run function neofunction:entity/skill/clocker_24_once
execute as @e[tag=clocker_24] at @s run function neofunction:entity/skill/clocker_24

# 時計を回す
execute as @e[tag=clocker,limit=1] at @s run function neofunction:entity/skill/clocker_once
execute as @e[tag=clocker] at @s run function neofunction:entity/skill/clocker

#エキリブリアム用の加護パーティクル
execute as @e[tag=ekirifire] at @s run function neofunction:asset/particle/circle/ekiriburiamu/fire
execute as @e[tag=ekiriwater] at @s run function neofunction:asset/particle/circle/ekiriburiamu/water
execute as @e[tag=ekiriwind] at @s run function neofunction:asset/particle/circle/ekiriburiamu/wind
execute as @e[tag=ekiridirt] at @s run function neofunction:asset/particle/circle/ekiriburiamu/dirt

# エキリブリアム風属性の攻撃
execute as @e[tag=ekiriwind] at @s run function neofunction:entity/skill/boss/ekiriburiamu/wind1s

#ヴァレリカを1秒毎に最寄りのプレイヤーに向けて射出
execute as @e[tag=backstep] at @s if entity @p[distance=10..,gamemode=!spectator] run function neofunction:entity/skill/motion/1500upper

#カエルボスを1秒毎に条件に従った場合射出
execute as @e[tag=FrogBoss] at @s as @e[team=boss,type=minecraft:frog,sort=nearest,distance=..3] at @s positioned ~-4 ~-8 ~-4 if entity @a[dx=8,dy=5,dz=8] run function neofunction:entity/skill/motion/1000