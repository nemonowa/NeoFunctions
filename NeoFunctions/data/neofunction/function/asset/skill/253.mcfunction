# 命名：253
# 説明：深蝕苦無【ディーブヴェノム】
#        リワーク：命中対象(最大3体)に呪印を付与する
# >
# =/function neofunction:asset/skill/253


# ウィザー効果
execute as @s[scores={LVL=10..}] as @e[tag=enemy,distance=..8,limit=3,sort=nearest] run effect give @s minecraft:wither 7 0
execute as @s[scores={LVL=30..}] as @e[tag=enemy,distance=..8,limit=3,sort=nearest] run effect give @s minecraft:wither 7 1
execute as @s[scores={LVL=50..}] as @e[tag=enemy,distance=..8,limit=3,sort=nearest] run effect give @s minecraft:wither 7 2
execute as @s[scores={LVL=70..}] as @e[tag=enemy,distance=..8,limit=3,sort=nearest] run effect give @s minecraft:wither 14 2
execute as @s[scores={LVL=90..}] as @e[tag=enemy,distance=..8,limit=3,sort=nearest] run effect give @s minecraft:wither 28 2

# ダメージ
execute as @s[scores={LVL=10..}] as @e[tag=enemy,distance=..8,limit=3,sort=nearest] run damage @s 5 minecraft:generic by @p
execute as @s[scores={LVL=20..}] as @e[tag=enemy,distance=..8,limit=3,sort=nearest] run damage @s 5 minecraft:generic by @p
execute as @s[scores={LVL=30..}] as @e[tag=enemy,distance=..8,limit=3,sort=nearest] run damage @s 5 minecraft:generic by @p
execute as @s[scores={LVL=40..}] as @e[tag=enemy,distance=..8,limit=3,sort=nearest] run damage @s 5 minecraft:generic by @p
execute as @s[scores={LVL=50..}] as @e[tag=enemy,distance=..8,limit=3,sort=nearest] run damage @s 5 minecraft:generic by @p
execute as @s[scores={LVL=60..}] as @e[tag=enemy,distance=..8,limit=3,sort=nearest] run damage @s 5 minecraft:generic by @p
execute as @s[scores={LVL=70..}] as @e[tag=enemy,distance=..8,limit=3,sort=nearest] run damage @s 5 minecraft:generic by @p
execute as @s[scores={LVL=80..}] as @e[tag=enemy,distance=..8,limit=3,sort=nearest] run damage @s 5 minecraft:generic by @p
execute as @s[scores={LVL=90..}] as @e[tag=enemy,distance=..8,limit=3,sort=nearest] run damage @s 5 minecraft:generic by @p

# リワーク：命中対象(最大3体)に呪印を付与
execute as @e[tag=enemy,distance=..8,limit=3,sort=nearest] run function neofunction:asset/skill/mark_apply

# 演出
playsound item.crossbow.loading_end record @s ~ ~ ~ 1.0 2.0
scoreboard players remove @s SP 5
