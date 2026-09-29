# 命名：魔杖錬成【クリエイト・ロッド】
# 説明：剣士が無から剣を錬成するスキル（SP30消費）
# >
# =/function neofunction:asset/skill/211


# 内容：
effect give @s glowing 1 0

# 演出
particle enchant ~ ~1 ~ 0.1 0.5 0.1 0.001 30 force
playsound minecraft:block.enchantment_table.use record @a[distance=..16] ~ ~ ~ 2 0.1 0


# 処理：
execute at @s run summon chicken ^ ^ ^3 {PortalCooldown:90,DeathLootTable:"empty",Motion:[0.0,1.0,0.0],Passengers:[{id:"minecraft:area_effect_cloud",custom_particle:{type:"minecraft:flash"},Radius:0.1f,Duration:20,CustomName:{"text":"後光"}},{id:"minecraft:item",NoGravity:1b,Glowing:1b,PickupDelay:60,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"text":"۞-錬成魔法杖-۞","color":"white","bold":true,"italic":false},"minecraft:lore":[{"text":"共鳴士官が錬成した即席の魔杖","color":"yellow","bold":true,"italic":false,"underlined":true}],"minecraft:custom_model_data":{floats:[99999.0f]},"minecraft:enchantments":{"minecraft:sharpness":7,"minecraft:sweeping_edge":7,"minecraft:vanishing_curse":7}}}}],CustomName:{"text":"錬成陣"},active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1}]}


loot give @s loot neofunction:item/128


# 消費SP
scoreboard players remove @s SP 30



