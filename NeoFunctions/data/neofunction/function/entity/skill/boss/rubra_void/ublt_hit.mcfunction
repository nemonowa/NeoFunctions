# 命名：ublt_hit
# 説明：黒い槍が人に当たった：7 ダメージ、槍は弾けて消える
# 説明：エリートチャレンジ（fin.elite）ではダメージ 1.5 倍
# 実行条件：実行者・実行位置 黒い槍
# >/function neofunction:entity/skill/boss/rubra_void/ublt_tick
# =/function neofunction:entity/skill/boss/rubra_void/ublt_hit

# 内容
execute unless data storage neofunction:rubra fin{elite:1b} as @a[distance=..1.4,gamemode=!spectator] run damage @s 7 minecraft:magic by @e[type=ghast,tag=rubra_void,limit=1]
execute if data storage neofunction:rubra fin{elite:1b} as @a[distance=..1.4,gamemode=!spectator] run damage @s 11 minecraft:magic by @e[type=ghast,tag=rubra_void,limit=1]
particle minecraft:squid_ink ~ ~ ~ 0.3 0.3 0.3 0.05 12 force @a[distance=..64]
playsound minecraft:entity.player.hurt_sweet_berry_bush hostile @a[distance=..32] ~ ~ ~ 1 0.6
kill @s
