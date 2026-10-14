# 命名：bow_hit
# 説明：【追加：2026-10-09 ルブラ編】星還しの弓の矢が当たった相手：ヴォイド・ゼロなら、攻撃が通るとき（膜が剥がれている・鎖で下ろされている・顎が開いている）に 12 の上乗せ（耐性を無視）
# 説明：ほかの武器では、ボス処理の耐性 III でほとんど削れない
# 実行条件：当たった生き物（エンチャントの post_attack から）
# >/enchantment neofunction:hoshigaeshi
# =/function neofunction:entity/skill/boss/rubra_void/bow_hit

# 内容
execute unless entity @s[type=ghast,tag=rubra_void] run return 0
execute unless data storage neofunction:rubra fin{state:"fight",vul:1b} run return 0
execute store result score #rv_h temp run data get entity @s Health
scoreboard players remove #rv_h temp 12
execute if score #rv_h temp matches ..1 run scoreboard players set #rv_h temp 1
execute store result entity @s Health float 1 run scoreboard players get #rv_h temp
particle minecraft:end_rod ~ ~2 ~ 1 1 1 0.1 15 force @a[distance=..128]
playsound minecraft:block.amethyst_block.hit hostile @a[distance=..64] ~ ~ ~ 2 1.6
