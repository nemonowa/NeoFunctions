# 命名：.neo
# 説明：（説明未記載）
# >/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/.neo
# =/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/fire/.neo

execute if score @s generaltimer matches 40 run function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/fire/init

execute as @e[tag=ekiriFinalAEC,limit=1,sort=nearest] at @s run function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/fire/macro with entity @s

scoreboard players operation #Calc1 temp = @s generaltimer
scoreboard players operation #Calc1 temp %= $20 const

execute positioned 1029 7 1765 if score #Calc1 temp matches 0 run playsound item.firecharge.use hostile @a[distance=..32] ~ ~ ~ 100 0.5