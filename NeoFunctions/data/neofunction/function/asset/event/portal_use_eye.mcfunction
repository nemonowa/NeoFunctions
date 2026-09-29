# 命名：
# 説明：ＴＵＳＢネタ
# 説明：進捗から
# >皇子の家から
# =/function neofunction:asset/event/portal_use_eye


execute as @a as @s run playsound minecraft:entity.ender_dragon.death record @s ~ ~ ~ 2.0 2
execute as @a at @s run particle minecraft:happy_villager ~ ~ ~ 1 1 1 0 30 normal
execute as @a at @s run particle minecraft:instant_effect ~ ~1 ~ 1 1 1 0.1 90 normal
execute as @a at @s positioned ~ ~1 ~ run summon firework_rocket ~ ~ ~ {LifeTime:10,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16774552],fade_colors:[I;16777215]},{shape:"small_ball",colors:[I;65407,16777215,16777215],fade_colors:[I;16777215]}]}}}}
execute as @a at @s run title @s subtitle {"text":"攻略率:1/3 33.3%","color":"white","italic":true}
execute as @a at @s run title @s title {"text":"島を攻略した！","color":"gold","bold":true,"italic":false}