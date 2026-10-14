# 命名：star_hit
# 説明：【追加：2026-10-13 ルブラ編】小さな黒星の着弾：まわり 3 マス（【変更：2026-10-13】2.5 → 3）の人に 8 ダメージ。波紋のように、半径 2 と 4 の輪に黒い水を残す
# 説明：【変更：2026-10-14】エリートチャレンジ（fin.elite）ではダメージ 1.5 倍
# 実行条件：実行位置 着弾した床の上
# >/function neofunction:entity/skill/boss/rubra_void/star_fall
# =/function neofunction:entity/skill/boss/rubra_void/star_hit

# 内容
particle minecraft:explosion ~ ~0.5 ~ 0.4 0.2 0.4 0 2 force @a[distance=..128]
particle minecraft:squid_ink ~ ~0.5 ~ 1.5 0.3 1.5 0.05 30 force @a[distance=..128]
playsound minecraft:entity.generic.explode hostile @a[distance=..64] ~ ~ ~ 1.2 0.7
execute unless data storage neofunction:rubra fin{elite:1b} as @a[distance=..3,gamemode=!spectator] run damage @s 8 minecraft:magic by @e[type=ghast,tag=rubra_void,limit=1]
execute if data storage neofunction:rubra fin{elite:1b} as @a[distance=..3,gamemode=!spectator] run damage @s 12 minecraft:magic by @e[type=ghast,tag=rubra_void,limit=1]
execute rotated 0 0 positioned ^ ^ ^2 run function neofunction:entity/skill/boss/rubra_void/ink_put
execute rotated 45 0 positioned ^ ^ ^2 run function neofunction:entity/skill/boss/rubra_void/ink_put
execute rotated 90 0 positioned ^ ^ ^2 run function neofunction:entity/skill/boss/rubra_void/ink_put
execute rotated 135 0 positioned ^ ^ ^2 run function neofunction:entity/skill/boss/rubra_void/ink_put
execute rotated 180 0 positioned ^ ^ ^2 run function neofunction:entity/skill/boss/rubra_void/ink_put
execute rotated 225 0 positioned ^ ^ ^2 run function neofunction:entity/skill/boss/rubra_void/ink_put
execute rotated 270 0 positioned ^ ^ ^2 run function neofunction:entity/skill/boss/rubra_void/ink_put
execute rotated 315 0 positioned ^ ^ ^2 run function neofunction:entity/skill/boss/rubra_void/ink_put
execute rotated 0 0 positioned ^ ^ ^4 run function neofunction:entity/skill/boss/rubra_void/ink_put
execute rotated 30 0 positioned ^ ^ ^4 run function neofunction:entity/skill/boss/rubra_void/ink_put
execute rotated 60 0 positioned ^ ^ ^4 run function neofunction:entity/skill/boss/rubra_void/ink_put
execute rotated 90 0 positioned ^ ^ ^4 run function neofunction:entity/skill/boss/rubra_void/ink_put
execute rotated 120 0 positioned ^ ^ ^4 run function neofunction:entity/skill/boss/rubra_void/ink_put
execute rotated 150 0 positioned ^ ^ ^4 run function neofunction:entity/skill/boss/rubra_void/ink_put
execute rotated 180 0 positioned ^ ^ ^4 run function neofunction:entity/skill/boss/rubra_void/ink_put
execute rotated 210 0 positioned ^ ^ ^4 run function neofunction:entity/skill/boss/rubra_void/ink_put
execute rotated 240 0 positioned ^ ^ ^4 run function neofunction:entity/skill/boss/rubra_void/ink_put
execute rotated 270 0 positioned ^ ^ ^4 run function neofunction:entity/skill/boss/rubra_void/ink_put
execute rotated 300 0 positioned ^ ^ ^4 run function neofunction:entity/skill/boss/rubra_void/ink_put
execute rotated 330 0 positioned ^ ^ ^4 run function neofunction:entity/skill/boss/rubra_void/ink_put
