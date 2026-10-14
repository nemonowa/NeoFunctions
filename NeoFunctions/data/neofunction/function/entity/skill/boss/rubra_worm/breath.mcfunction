# 命名：breath
# 説明：【追加：2026-10-14 ルブラ編】砂の吐息：てっぺんから、いちばん近い人へ砂の弾を 5 発（扇、8 度ずつ）
# 実行条件：実行者・実行位置 本体（てっぺん）
# >/function neofunction:entity/skill/boss/rubra_worm/arrive
# =/function neofunction:entity/skill/boss/rubra_worm/breath

# 内容
execute unless entity @a[distance=..48,gamemode=!spectator] run return 0
playsound minecraft:entity.ravager.attack hostile @a[distance=..64] ~ ~ ~ 2 0.7
execute facing entity @p[gamemode=!spectator] feet rotated ~-16 ~ run function neofunction:entity/skill/boss/rubra_worm/sand_spawn
execute facing entity @p[gamemode=!spectator] feet rotated ~-8 ~ run function neofunction:entity/skill/boss/rubra_worm/sand_spawn
execute facing entity @p[gamemode=!spectator] feet run function neofunction:entity/skill/boss/rubra_worm/sand_spawn
execute facing entity @p[gamemode=!spectator] feet rotated ~8 ~ run function neofunction:entity/skill/boss/rubra_worm/sand_spawn
execute facing entity @p[gamemode=!spectator] feet rotated ~16 ~ run function neofunction:entity/skill/boss/rubra_worm/sand_spawn
