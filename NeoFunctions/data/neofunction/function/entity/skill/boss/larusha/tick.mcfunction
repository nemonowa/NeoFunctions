# 命名：tick
# 説明：
# 実行条件：
# >/function neofunction:entity/skill/boss/.neo 実行者as @e[tag=!vanilla,tag=check] if entity @s[tag=boss] if entity @s[tag=larusha] 実行位置@s
# =/function neofunction:entity/skill/boss/larusha/tick

#太陽砲のカウントダウン
execute if score @s generaltimer matches -2147483648..2147483647 run scoreboard players remove @s generaltimer 1
execute store result bossbar sunbeam value run scoreboard players get @s generaltimer


#プレイヤーが64mエリアに存在している間は処理をここで終了
execute if entity @a[distance=..55,gamemode=!spectator] run return 0

# ここから下は上の条件に合致した場合のみ
#40m以内の全てのエンティティにdel付与（削除）
#ラルーシャが煽る

execute in neodimension:ceresta_festa run clone 220 10 2009 208 18 2021 226 -20 1960

execute if entity @s[nbt={DeathLootTable:"neofunction:asset/summon/769"}] run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"黄金は、眠らない。","color":"gray","bold":true,"italic":false}]

execute as @e[tag=sunbeam,type=armor_stand] at @s run tag @s add del
execute as @e[tag=bright,type=armor_stand] at @s run tag @s add del
execute as @e[tag=larushabeam,type=armor_stand] at @s run tag @s add del
tag @e[tag=enemy,distance=..64] add del
schedule function neofunction:asset/bossbar/hide 1s

#機動部復活処理




