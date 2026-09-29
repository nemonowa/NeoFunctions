# 命名：魔剣錬成【クリエイト・ソード】
# 説明：白刃騎士が創剣するスキル（SP30消費）
# >/function neofunction:asset/skill/201
# =/function neofunction:player/job/knight/skill-craft


# 
tellraw @s[gamemode=creative] [{"text":"[管理者通知]サバイバルゲームルール専用の処理です！","color":"red"}]
effect give @s glowing 1 0

# 演出
particle enchant ~ ~1 ~ 0.1 0.5 0.1 0.001 30 force
playsound minecraft:block.enchantment_table.use record @a[distance=..16] ~ ~ ~ 2 0.1 0


# 処理：上向くの結構使い勝手の面からうざかった
#tp @s ~ ~ ~ ~ -88
summon chicken ~ ~ ~ {Silent:1b,Glowing:1b,DeathLootTable:"neofunction:asset/skill/knight",Health:5f,Motion:[0.0,1.0,0.0],Tags:["inv"],Passengers:[{id:"minecraft:area_effect_cloud",custom_particle:{type:"minecraft:flash"},Radius:0.1f,Duration:20,CustomName:{"text":"後光"}}],CustomName:{"text":"錬成陣"},active_effects:[{id:"minecraft:invisibility",amplifier:9b,duration:-1},{id:"minecraft:wither",amplifier:1b,duration:-1}]}


# 消費SP
scoreboard players remove @s SP 30








