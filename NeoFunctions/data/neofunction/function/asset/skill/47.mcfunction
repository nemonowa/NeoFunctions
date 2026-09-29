# 命名：47
# 説明：スターラース・オクターブ
# >/function neofunction:system/adv/player_interacted_with_entity/horse
# =/function neofunction:asset/skill/47


# 内容：敵を発行浮遊させ、8回の継続爆発ダメージを与え最後に爆発四散させる
tellraw @a[distance=..64] [{"text":"<","color":"white"},{"selector":"@s","color":"#FFFFFF","bold":true,"italic":false},{"text":"> ","color":"white"},{"text":"「星の怒りよ、穿て」","color":"black","bold":true,"italic":false}]

tellraw @a[distance=..64] [{"text":"<","color":"white"},{"selector":"@s","color":"#FFFFFF","bold":true,"italic":false},{"text":"> ","color":"white"},{"text":"「八度、瞬き、四散せよ」","color":"black","bold":true,"italic":false}]
execute as @e[tag=enemy,distance=..48,limit=3,sort=nearest] run tag @s add skill47
tag @s add skilling
execute as @e[tag=enemy,distance=..48,limit=3,sort=nearest] run effect give @s minecraft:levitation 5 2
execute as @e[tag=enemy,distance=..48,limit=3,sort=nearest] run effect give @s minecraft:glowing 5
#execute as @e[tag=skill47] at @s run playsound block.beacon.power_select record @a[distance=..32] ~ ~ ~ 1 2.0 0.01

schedule function neofunction:asset/skill/47/4 5s
schedule function neofunction:asset/skill/47/sound 10t
schedule function neofunction:asset/skill/47/sound1 20t
schedule function neofunction:asset/skill/47/sound2 30t
schedule function neofunction:asset/skill/47/sound3 40t
schedule function neofunction:asset/skill/47/sound4 50t
schedule function neofunction:asset/skill/47/sound5 60t
schedule function neofunction:asset/skill/47/sound6 70t
schedule function neofunction:asset/skill/47/sound7 80t

# SP消費：200SP消費
scoreboard players remove @s SP 200