# 命名：254
# 説明：影縫乱舞【シャドウ・ランページ】
#        リワーク：呪印を持つ対象には固定の追加ダメージ(+25)を与え、
#        命中と同時にその呪印を消費する「起爆」技になる
# >スキル発動時
# =/function neofunction:asset/skill/254


# 内容
tag @s add skill254

# ダメージ3mまで
execute as @s[scores={LVL=10..}] as @e[tag=enemy,distance=..3] run damage @s 25 minecraft:generic by @p
execute as @s[scores={LVL=20..}] as @e[tag=enemy,distance=..3] run damage @s 15 minecraft:generic by @p
execute as @s[scores={LVL=30..}] as @e[tag=enemy,distance=..3] run damage @s 15 minecraft:generic by @p
execute as @s[scores={LVL=40..}] as @e[tag=enemy,distance=..3] run damage @s 15 minecraft:generic by @p
execute as @s[scores={LVL=50..}] as @e[tag=enemy,distance=..3] run damage @s 15 minecraft:generic by @p
execute as @s[scores={LVL=60..}] as @e[tag=enemy,distance=..3] run damage @s 15 minecraft:generic by @p
execute as @s[scores={LVL=70..}] as @e[tag=enemy,distance=..3] run damage @s 15 minecraft:generic by @p
execute as @s[scores={LVL=80..}] as @e[tag=enemy,distance=..3] run damage @s 15 minecraft:generic by @p
execute as @s[scores={LVL=90..}] as @e[tag=enemy,distance=..3] run damage @s 15 minecraft:generic by @p

# ダメージ3..6mまで
execute as @s[scores={LVL=10..}] as @e[tag=enemy,distance=3..6] run damage @s 15 minecraft:generic by @p
execute as @s[scores={LVL=20..}] as @e[tag=enemy,distance=3..6] run damage @s 9 minecraft:generic by @p
execute as @s[scores={LVL=30..}] as @e[tag=enemy,distance=3..6] run damage @s 9 minecraft:generic by @p
execute as @s[scores={LVL=40..}] as @e[tag=enemy,distance=3..6] run damage @s 9 minecraft:generic by @p
execute as @s[scores={LVL=50..}] as @e[tag=enemy,distance=3..6] run damage @s 9 minecraft:generic by @p
execute as @s[scores={LVL=60..}] as @e[tag=enemy,distance=3..6] run damage @s 9 minecraft:generic by @p
execute as @s[scores={LVL=70..}] as @e[tag=enemy,distance=3..6] run damage @s 9 minecraft:generic by @p
execute as @s[scores={LVL=80..}] as @e[tag=enemy,distance=3..6] run damage @s 9 minecraft:generic by @p
execute as @s[scores={LVL=90..}] as @e[tag=enemy,distance=3..6] run damage @s 9 minecraft:generic by @p

# ダメージ6..8mまで
execute as @s[scores={LVL=10..}] as @e[tag=enemy,distance=6..8] run damage @s 5 minecraft:generic by @p
execute as @s[scores={LVL=20..}] as @e[tag=enemy,distance=6..8] run damage @s 3 minecraft:generic by @p
execute as @s[scores={LVL=30..}] as @e[tag=enemy,distance=6..8] run damage @s 3 minecraft:generic by @p
execute as @s[scores={LVL=40..}] as @e[tag=enemy,distance=6..8] run damage @s 3 minecraft:generic by @p
execute as @s[scores={LVL=50..}] as @e[tag=enemy,distance=6..8] run damage @s 3 minecraft:generic by @p
execute as @s[scores={LVL=60..}] as @e[tag=enemy,distance=6..8] run damage @s 3 minecraft:generic by @p
execute as @s[scores={LVL=70..}] as @e[tag=enemy,distance=6..8] run damage @s 3 minecraft:generic by @p
execute as @s[scores={LVL=80..}] as @e[tag=enemy,distance=6..8] run damage @s 3 minecraft:generic by @p
execute as @s[scores={LVL=90..}] as @e[tag=enemy,distance=6..8] run damage @s 3 minecraft:generic by @p

# リワーク：呪印を持つ対象への追加ダメージ（8m以内、固定+25）と呪印の消費
execute as @e[tag=enemy,tag=marked,distance=..8] run damage @s 25 minecraft:generic by @p
execute as @e[tag=enemy,tag=marked,distance=..8] run tag @s remove marked

schedule function neofunction:asset/skill/254-2 1t
schedule function neofunction:asset/skill/254-1 5t
schedule function neofunction:asset/skill/254-1 8t
schedule function neofunction:asset/skill/254-1 11t
schedule function neofunction:asset/skill/254-3 12t

scoreboard players remove @s SP 25
