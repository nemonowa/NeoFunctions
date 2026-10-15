# 命名：ublt_ground
# 説明：黒い槍が床に刺さった：まわり 1.5 マスの人に 4 ダメージ、1 マス上に黒い水を残して消える
# 説明：エリートチャレンジ（fin.elite）ではダメージ 1.5 倍
# 実行条件：実行者・実行位置 黒い槍（ブロックの中）
# >/function neofunction:entity/skill/boss/rubra_void/ublt_tick
# =/function neofunction:entity/skill/boss/rubra_void/ublt_ground

# 内容
execute unless data storage neofunction:rubra fin{elite:1b} as @a[distance=..1.5,gamemode=!spectator] run damage @s 4 minecraft:magic by @e[type=ghast,tag=rubra_void,limit=1]
execute if data storage neofunction:rubra fin{elite:1b} as @a[distance=..1.5,gamemode=!spectator] run damage @s 6 minecraft:magic by @e[type=ghast,tag=rubra_void,limit=1]
particle minecraft:squid_ink ~ ~0.5 ~ 0.3 0.2 0.3 0.05 10 force @a[distance=..64]
execute positioned ~ ~1 ~ run function neofunction:entity/skill/boss/rubra_void/ink_put
kill @s
