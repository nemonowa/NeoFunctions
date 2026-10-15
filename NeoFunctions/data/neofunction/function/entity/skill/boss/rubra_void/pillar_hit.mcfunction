# 命名：pillar_hit
# 説明：黒い水の柱が噴き上がる：まわり 2.5 マスの人に 8 ダメージ。あとに黒い水
# 説明：エリートチャレンジ（fin.elite）ではダメージ 1.5 倍
# 実行条件：実行者・実行位置 柱の目印
# >/function neofunction:entity/skill/boss/rubra_void/act
# =/function neofunction:entity/skill/boss/rubra_void/pillar_hit

# 内容
particle minecraft:squid_ink ~ ~2 ~ 0.6 2.5 0.6 0.05 80 force @a[distance=..128]
particle minecraft:splash ~ ~1 ~ 1 1 1 0 60 normal
playsound minecraft:entity.player.splash.high_speed hostile @a[distance=..64] ~ ~ ~ 2 0.5
execute unless data storage neofunction:rubra fin{elite:1b} as @a[distance=..2.5,gamemode=!spectator] run damage @s 8 minecraft:magic by @e[type=ghast,tag=rubra_void,limit=1]
execute if data storage neofunction:rubra fin{elite:1b} as @a[distance=..2.5,gamemode=!spectator] run damage @s 12 minecraft:magic by @e[type=ghast,tag=rubra_void,limit=1]
function neofunction:entity/skill/boss/rubra_void/ink_put
execute positioned ~1 ~ ~ run function neofunction:entity/skill/boss/rubra_void/ink_put
execute positioned ~-1 ~ ~ run function neofunction:entity/skill/boss/rubra_void/ink_put
execute positioned ~ ~ ~1 run function neofunction:entity/skill/boss/rubra_void/ink_put
execute positioned ~ ~ ~-1 run function neofunction:entity/skill/boss/rubra_void/ink_put
