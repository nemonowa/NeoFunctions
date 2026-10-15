# 命名：meteor_hit
# 説明：星屑が落ちる：まわり 2.5 マスの人に 10 ダメージ
# 説明：エリートチャレンジ（fin.elite）ではダメージ 1.5 倍
# 実行条件：実行者・実行位置 天墜の目印
# >/function neofunction:entity/skill/boss/rubra_void/act
# =/function neofunction:entity/skill/boss/rubra_void/meteor_hit

# 内容
particle minecraft:explosion ~ ~0.5 ~ 0.5 0.3 0.5 0 3 force @a[distance=..128]
particle minecraft:lava ~ ~0.5 ~ 1 0.3 1 0 20 force @a[distance=..128]
particle minecraft:dust{color:[1.0,0.3,0.2],scale:2.0} ~ ~1 ~ 1.2 1 1.2 0 40 force @a[distance=..128]
playsound minecraft:entity.generic.explode hostile @a[distance=..64] ~ ~ ~ 1.5 1.2
execute unless data storage neofunction:rubra fin{elite:1b} as @a[distance=..2.5,gamemode=!spectator] run damage @s 10 minecraft:in_fire by @e[type=ghast,tag=rubra_void,limit=1]
execute if data storage neofunction:rubra fin{elite:1b} as @a[distance=..2.5,gamemode=!spectator] run damage @s 15 minecraft:in_fire by @e[type=ghast,tag=rubra_void,limit=1]
