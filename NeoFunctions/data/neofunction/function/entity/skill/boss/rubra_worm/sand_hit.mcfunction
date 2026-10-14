# 命名：sand_hit
# 説明：【追加：2026-10-14 ルブラ編】砂の弾が人に当たった：5 ダメージと 1 秒の目くらまし
# 実行条件：実行者・実行位置 砂の弾
# >/function neofunction:entity/skill/boss/rubra_worm/sand_tick
# =/function neofunction:entity/skill/boss/rubra_worm/sand_hit

# 内容
execute as @a[distance=..1.1,gamemode=!spectator] run effect give @s minecraft:blindness 1 0 true
execute as @a[distance=..1.1,gamemode=!spectator] run damage @s 5 minecraft:mob_projectile by @e[type=ravager,tag=rubra_worm,limit=1]
particle minecraft:block{block_state:"minecraft:red_sand"} ~ ~ ~ 0.3 0.3 0.3 0 20 normal
kill @s
