# 命名：219-1
# 説明：共鳴領域【レゾナンス・サンクチュアリ】
# 説明：トリガーすると1分間の共鳴領域を生成する。共鳴領域は範囲内のあらゆる敵に1秒ごとに鈍足と共鳴刻印を与え、範囲内のプレイヤーには共鳴回帰、共鳴短律を付与する。
# >
# =/function neofunction:asset/skill/219-1


# 効果：
execute as @e[tag=skill219] at @s run effect give @a[distance=..8] minecraft:glowing 1 117
execute as @e[tag=skill219] at @s run effect give @a[distance=..8] minecraft:glowing 1 116
execute as @e[tag=skill219] at @s run effect give @e[tag=enemy,distance=..8] minecraft:glowing 1 118
execute as @e[tag=skill219] at @s run effect give @e[tag=enemy,distance=..8] minecraft:wither 1 4
execute as @e[tag=skill219] at @s run effect give @e[tag=enemy,distance=..8] minecraft:slowness 1 2

# nemo艦長のガチexecute幾何学
execute as @e[tag=roll,limit=1] at @s positioned as @e[tag=skill219] positioned ~ ~0.3 ~ run particle soul_fire_flame ^8 ^ ^ 0.1 0 0 1 3 normal
execute as @e[tag=roll,limit=1] at @s positioned as @e[tag=skill219] positioned ~ ~0.3 ~ run particle soul_fire_flame ^-2 ^ ^ 0.1 0 0 1 3 normal
# 超わかりやすい補講：(execute as 0-0-0-0-1 at @s positioned as @a run particle minecraft:end_rod ^2 ^ ^ 0.1 0 0 0 1 normal)
execute as @e[tag=skill219] at @s run function neofunction:asset/particle/star/8m
execute as @e[tag=skill219] at @s run function neofunction:asset/particle/sphere8m


# ループ
execute unless entity @e[tag=skill219] run return run say 共鳴領域の効果が切れた
schedule function neofunction:asset/skill/219-1 1t append

