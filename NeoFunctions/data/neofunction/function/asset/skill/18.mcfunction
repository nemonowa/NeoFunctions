# 命名：18
# 説明：錬成術【魔法剣錬成】
# >
# =/function neofunction:asset/skill/18



# 内容
execute at @s run summon chicken ^ ^ ^3 {PortalCooldown:90,DeathLootTable:"empty",Motion:[0.0,1.0,0.0],Passengers:[{id:"minecraft:area_effect_cloud",custom_particle:{type:"minecraft:flash"},Radius:0.1f,Duration:20,CustomName:{"text":"後光"}},{id:"minecraft:item",NoGravity:1b,Glowing:1b,PickupDelay:60,Item:{id:"minecraft:iron_sword",count:1,components:{"minecraft:custom_name":{"text":"۞-錬成魔法剣-۞","color":"aqua","bold":true,"italic":false},"minecraft:lore":[{"text":"錬金魔法で錬成された即席の魔法剣","color":"dark_gray","bold":false,"italic":false}],"minecraft:damage":247,"minecraft:enchantments":{"minecraft:sharpness":7,"minecraft:sweeping_edge":7,"minecraft:unbreaking":7,"minecraft:vanishing_curse":7}}}}],CustomName:{"text":"錬成陣"},active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1}]}

# 消費SP
scoreboard players remove @s SP 8