# 命名：attack
# 説明：
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/.neo
# =/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/attack

execute as @a[distance=..32] at @s run playsound item.trident.thunder hostile @a[distance=..32] ^ ^ ^-0.5 0.1 2
particle minecraft:wax_off ~ ~ ~ 0.2 4 0.2 1 200
execute as @a[distance=..4.5] run damage @s 20 lightning_bolt by @e[tag=FrogBoss,limit=1]
# 【追加：2026-09-12 使い魔（familiarタグ）も直撃判定に含める。落雷位置自体はプレイヤー基準のまま変更せず、
#   範囲内に居合わせた使い魔だけが巻き込まれる形（使い魔単独を狙う専用処理は追加しない）】
execute as @e[tag=familiar,distance=..4.5] run damage @s 20 lightning_bolt by @e[tag=FrogBoss,limit=1]
#effect give @a[distance=..4.5] levitation 3 200
