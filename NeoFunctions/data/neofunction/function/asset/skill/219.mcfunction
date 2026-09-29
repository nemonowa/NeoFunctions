# 命名：219
# 説明：共鳴領域【レゾナンス・サンクチュアリ】
# >
# =/function neofunction:asset/skill/219

# 内容

summon endermite ~ ~ ~ {NoGravity:1b,Silent:1b,Team:"white",NoAI:1b,Lifetime:1200,PlayerSpawned:0b,Tags:["skill219","check"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1}]}

# 演出

playsound minecraft:block.enchantment_table.use record @s ~ ~ ~ 2.0 1.2
playsound block.end_portal.spawn record @s ~ ~ ~ 0.1 1.1
particle minecraft:enchant ~ ~ ~ 0.2 0.2 0.2 1 1000 force

# SP消費：100SP消費
scoreboard players remove @s SP 100


# 自己ループ
function neofunction:asset/skill/219-1


# クールタイム
# scoreboard players add @s CT 2

