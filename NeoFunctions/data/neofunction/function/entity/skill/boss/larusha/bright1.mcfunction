# 命名：bright1
# 説明：
#初回起動
# >/function neofunction:entity/skill/boss/larusha/skill 実行者as @e[type=wither_skeleton,tag=larusha,tag=!nowskilling] as @s[scores={HP=..200},tag=!ult2] 実行位置@s
# =/function neofunction:entity/skill/boss/larusha/bright1
execute in neodimension:ceresta_festa run tp @s 224.17 -7.14 1966.78
data modify entity @s NoAI set value 1b
data modify entity @s NoGravity set value 1b
effect give @s resistance infinite 3
tag @s add nowskilling
me §fは§6§l§n百億年の輝き§fを唱えている！！
execute as @e[tag=larusha] at @s as @a[distance=..64] at @s run playsound block.respawn_anchor.set_spawn master @a ~ ~5 ~ 2 0.4
execute as @e[tag=larusha] at @s as @a[distance=..64] at @s run playsound block.beacon.power_select master @a ~ ~ ~ 2 1.0
execute as @e[tag=larusha] at @s as @a[distance=..64] at @s run playsound block.amethyst_block.chime master @a ~ ~ ~ 2 0.5

#ラルーシャの目線にアマスタ召喚
execute as @e[type=wither_skeleton,tag=larusha] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~
execute as @e[type=wither_skeleton,tag=larusha] at @s positioned ~ ~3 ~ run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["bright","enemy"],CustomName:{"text":"百億年の輝き","color":"gold","bold":true,"italic":false}}

#アマスタのパーティクル表示処理を起動
execute as @e[type=armor_stand,tag=bright] at @s run function neofunction:entity/skill/boss/larusha/bright2


schedule function neofunction:entity/skill/boss/larusha/bright3 60t append
schedule function neofunction:entity/skill/boss/larusha/bright4 60t append
schedule function neofunction:entity/skill/boss/larusha/bright3 100t append
schedule function neofunction:entity/skill/boss/larusha/bright3 140t append


schedule function neofunction:entity/skill/boss/larusha/bright5 180t append
schedule function neofunction:entity/skill/boss/larusha/bright6 180t append
schedule function neofunction:entity/skill/boss/larusha/bright5 220t append
schedule function neofunction:entity/skill/boss/larusha/bright5 260t append

schedule function neofunction:entity/skill/boss/larusha/bright7 300t append




