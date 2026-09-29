# 命名：17
# 説明：祈祷術【聖餐】
# >
# =/function neofunction:asset/skill/17



#
execute at @s run summon chicken ^ ^ ^3 {PortalCooldown:90,DeathLootTable:"empty",Motion:[0.0,1.0,0.0],Passengers:[{id:"minecraft:area_effect_cloud",custom_particle:{type:"minecraft:flash"},Radius:0.1f,Duration:20,CustomName:{"text":"後光"}},{id:"minecraft:item",NoGravity:1b,Glowing:1b,PickupDelay:60,Item:{id:"minecraft:bread",count:16,components:{"minecraft:custom_name":{"text":"聖なる肉","color":"aqua","bold":false,"italic":false},"minecraft:lore":[{"text":"これがわたしの体である。","color":"black","bold":false,"italic":false}],"minecraft:custom_model_data":{floats:[374.0f]},"minecraft:custom_data":{rare:0}}}},{id:"minecraft:item",NoGravity:1b,Glowing:1b,PickupDelay:60,Item:{id:"minecraft:potion",count:4,components:{"minecraft:custom_name":{"text":"聖なる血","color":"aqua","bold":false,"italic":false},"minecraft:lore":[{"text":"これがわたしの血である。","color":"black","bold":false,"italic":false}],"minecraft:custom_model_data":{floats:[373.0f]},"minecraft:potion_contents":{potion:"minecraft:regeneration",custom_color:16725605},"minecraft:custom_data":{rare:0}}}}],CustomName:{"text":"神の御遣い"},active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1}]}


#演出
tellraw @s [{"text":"<"},{"selector":"@s"},{"text":">"},{"text":"「豊穣と冥葬の母神セレスタよ、あなたの祝福によりいただく大地の恵みに感謝します。この食物を我らが肉体と精神を支える糧とします。貴方の慈しみが大地に行き渡ることを祈って、ケレース」 "}]

# 消費SP(全spを使用)
# scoreboard players operation @s SP -= SPmax SP
scoreboard players remove @s SP 100