# 命名：結界術【加速陣】
# 説明：トリガーすると半径4mに「移動速度上昇」を付与する領域を展開する。SP30消費。
# 説明：https://docs.google.com/spreadsheets/d/1oRn_1tbEpzJEsyvsKct2pbeRSbK9n8WjXLdGHn6SC50/edit?gid=372993580#gid=372993580&range=A1
# >
# =/function neofunction:asset/skill/52-1


# 効果：
execute as @e[tag=skill52f] at @s run effect give @a[distance=..4] minecraft:strength 1 0
execute as @e[tag=skill52f] at @s run effect give @a[distance=..4] minecraft:glowing 1 0

# nemo艦長のガチexecute幾何学入門
execute as @e[tag=roll,limit=1] at @s positioned as @e[tag=skill52f] positioned ~ ~0.3 ~ run particle dust_color_transition{from_color:[0.000,1.000,0.933],to_color:[1.000,1.000,1.000],scale:1} ^4 ^ ^ 0.1 0 0 1 3 normal
execute as @e[tag=roll,limit=1] at @s positioned as @e[tag=skill52f] positioned ~ ~0.3 ~ run particle dust_color_transition{from_color:[0.000,1.000,0.933],to_color:[1.000,1.000,1.000],scale:1} ^-2 ^ ^ 0.1 0 0 1 3 normal
# 超わかりやすい補講：(execute as 0-0-0-0-1 at @s positioned as @a run particle minecraft:end_rod ^2 ^ ^ 0.1 0 0 0 1 normal)
execute as @e[tag=skill52f] at @s run function neofunction:asset/particle/star/4m


# ループ
execute unless entity @e[tag=skill52f] run return run tellraw @a[distance=..32] [{"text":"結界術の効果が切れた！","color":"red"}]
schedule function neofunction:asset/skill/52-1 1t append

