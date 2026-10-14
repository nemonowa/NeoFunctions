# 命名：ult_plus
# 説明：【追加：2026-10-13 ルブラ編】小さな黒星を十字に（4 方向、真ん中から外へ順に墜ちる）
# 実行条件：実行者 本体
# >/function neofunction:entity/skill/boss/rubra_void/ult_tick
# =/function neofunction:entity/skill/boss/rubra_void/ult_plus

# 内容
execute positioned 921.5 200 3282.5 rotated 0 0 positioned ^ ^30 ^4 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 rotated 0 0 positioned ^ ^34 ^8 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 rotated 0 0 positioned ^ ^38 ^12 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 rotated 0 0 positioned ^ ^42 ^16 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 rotated 0 0 positioned ^ ^46 ^20 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 rotated 0 0 positioned ^ ^50 ^24 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 rotated 0 0 positioned ^ ^54 ^28 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 rotated 90 0 positioned ^ ^30 ^4 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 rotated 90 0 positioned ^ ^34 ^8 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 rotated 90 0 positioned ^ ^38 ^12 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 rotated 90 0 positioned ^ ^42 ^16 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 rotated 90 0 positioned ^ ^46 ^20 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 rotated 90 0 positioned ^ ^50 ^24 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 rotated 90 0 positioned ^ ^54 ^28 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 rotated 180 0 positioned ^ ^30 ^4 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 rotated 180 0 positioned ^ ^34 ^8 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 rotated 180 0 positioned ^ ^38 ^12 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 rotated 180 0 positioned ^ ^42 ^16 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 rotated 180 0 positioned ^ ^46 ^20 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 rotated 180 0 positioned ^ ^50 ^24 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 rotated 180 0 positioned ^ ^54 ^28 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 rotated 270 0 positioned ^ ^30 ^4 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 rotated 270 0 positioned ^ ^34 ^8 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 rotated 270 0 positioned ^ ^38 ^12 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 rotated 270 0 positioned ^ ^42 ^16 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 rotated 270 0 positioned ^ ^46 ^20 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 rotated 270 0 positioned ^ ^50 ^24 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 rotated 270 0 positioned ^ ^54 ^28 run function neofunction:entity/skill/boss/rubra_void/star_spawn
playsound minecraft:entity.wither.shoot hostile @a[distance=..200] 921.5 230 3282.5 4 0.6
