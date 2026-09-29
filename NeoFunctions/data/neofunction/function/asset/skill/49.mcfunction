# 命名：結界術【剛撃陣】
# 説明：トリガーすると半径4mに「攻撃力上昇」を付与する領域を展開する。SP30消費。
# 説明：https://docs.google.com/spreadsheets/d/1oRn_1tbEpzJEsyvsKct2pbeRSbK9n8WjXLdGHn6SC50/edit?gid=372993580#gid=372993580&range=A1
# >
# =/function neofunction:asset/skill/49


# 内容：
effect give @s glowing 1 0
summon endermite ~ ~ ~ {NoGravity:1b,Silent:1b,Team:"white",NoAI:1b,Lifetime:1800,PlayerSpawned:0b,Tags:["skill49f","check"],Passengers:[{id:"minecraft:area_effect_cloud",custom_particle:{type:"minecraft:note"},Radius:0.1f,Duration:99}],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1}]}

# 演出：
playsound minecraft:entity.allay.item_thrown master @a[distance=..64] ~ ~ ~ 2 0.1 0.1
particle minecraft:enchant ~ ~ ~ 0.2 0.2 0.2 0.1 100 force

# 自己ループ
function neofunction:asset/skill/49-1


# 消費SP
scoreboard players remove @s SP 30

