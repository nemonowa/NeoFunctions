# 命名：rain_hit
# 説明：【追加：2026-10-09 ルブラ編】黒い雨が弾ける：まわり 1.8 マスの人に 6 ダメージ。3×3 の黒い水の溜まりが残る
# 説明：【変更：2026-10-14】エリートチャレンジ（fin.elite）ではダメージ 1.5 倍
# 実行条件：実行者・実行位置 黒い雨の目印
# >/function neofunction:entity/skill/boss/rubra_void/act
# =/function neofunction:entity/skill/boss/rubra_void/rain_hit

# 内容
particle minecraft:squid_ink ~ ~0.5 ~ 0.8 0.3 0.8 0.05 30 force @a[distance=..128]
playsound minecraft:entity.player.splash hostile @a[distance=..48] ~ ~ ~ 1 0.6
execute unless data storage neofunction:rubra fin{elite:1b} as @a[distance=..1.8,gamemode=!spectator] run damage @s 6 minecraft:magic by @e[type=ghast,tag=rubra_void,limit=1]
execute if data storage neofunction:rubra fin{elite:1b} as @a[distance=..1.8,gamemode=!spectator] run damage @s 9 minecraft:magic by @e[type=ghast,tag=rubra_void,limit=1]
execute positioned ~-1 ~ ~-1 run function neofunction:entity/skill/boss/rubra_void/ink_put
execute positioned ~-1 ~ ~ run function neofunction:entity/skill/boss/rubra_void/ink_put
execute positioned ~-1 ~ ~1 run function neofunction:entity/skill/boss/rubra_void/ink_put
execute positioned ~ ~ ~-1 run function neofunction:entity/skill/boss/rubra_void/ink_put
execute positioned ~ ~ ~ run function neofunction:entity/skill/boss/rubra_void/ink_put
execute positioned ~ ~ ~1 run function neofunction:entity/skill/boss/rubra_void/ink_put
execute positioned ~1 ~ ~-1 run function neofunction:entity/skill/boss/rubra_void/ink_put
execute positioned ~1 ~ ~ run function neofunction:entity/skill/boss/rubra_void/ink_put
execute positioned ~1 ~ ~1 run function neofunction:entity/skill/boss/rubra_void/ink_put
