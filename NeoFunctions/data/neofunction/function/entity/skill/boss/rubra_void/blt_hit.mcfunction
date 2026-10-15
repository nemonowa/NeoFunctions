# 命名：blt_hit
# 説明：黒い弾が人に当たった：5 ダメージ、弾は弾けて消える
# 説明：エリートチャレンジ（fin.elite）ではダメージ 1.5 倍
# 実行条件：実行者・実行位置 黒い弾
# >/function neofunction:entity/skill/boss/rubra_void/blt_tick
# =/function neofunction:entity/skill/boss/rubra_void/blt_hit

# 内容
execute unless data storage neofunction:rubra fin{elite:1b} as @a[distance=..1.0,gamemode=!spectator] run damage @s 5 minecraft:magic by @e[type=ghast,tag=rubra_void,limit=1]
execute if data storage neofunction:rubra fin{elite:1b} as @a[distance=..1.0,gamemode=!spectator] run damage @s 8 minecraft:magic by @e[type=ghast,tag=rubra_void,limit=1]
particle minecraft:squid_ink ~ ~ ~ 0.2 0.2 0.2 0.05 8 force @a[distance=..64]
kill @s
