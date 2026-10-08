# 命名：tick
# 説明：【追加：2026-10-08 ルブラ編】星喰い蟲の毎 tick の処理。体力、いなくなったときの片付け、動き、体、体当たり、光る節への攻撃、ミラの光
# 実行条件：実行者・実行位置 本体（ravager、タグ rubra_worm）
# >/function neofunction:entity/skill/boss/.neo
# =/function neofunction:entity/skill/boss/rubra_worm/tick

# 内容
execute if data storage neofunction:rubra worm{state:"dead"} run return 0
execute if data storage neofunction:rubra worm{state:"dying"} run return run function neofunction:entity/skill/boss/rubra_worm/dying
# 体力
execute store result score #rubra_hp temp run data get entity @s Health
execute if score #rubra_hp temp matches ..30 run return run function neofunction:entity/skill/boss/rubra_worm/die_start
execute if score #rubra_hp temp matches ..300 unless data storage neofunction:rubra worm{phase:2} run function neofunction:entity/skill/boss/rubra_worm/phase2
# 近くに誰もいなくなったら、地の底へ戻って（片付けて）やり直しにする
execute unless entity @a[distance=..64,gamemode=!spectator] run return run function neofunction:entity/skill/boss/rubra_worm/despawn
# 地中にいるあいだは窒息しないように無敵（床 y-41 より下）
execute if entity @s[y=-64,dy=21] run data merge entity @s {Invulnerable:1b}
execute unless entity @s[y=-64,dy=21] run data merge entity @s {Invulnerable:0b}
# 動き（予告のあいだは止まる）
execute if data storage neofunction:rubra worm{state:"warn"} run function neofunction:entity/skill/boss/rubra_worm/warn
execute unless data storage neofunction:rubra worm{state:"warn"} run function neofunction:entity/skill/boss/rubra_worm/move with storage neofunction:rubra worm.goal
# 体（頭と 12 の節）を、頭の通った跡に並べる
function neofunction:entity/skill/boss/rubra_worm/body
# 地上に出ているときの体当たり
execute at @s if entity @s[y=-42,dy=30] as @a[distance=..2.8,gamemode=!spectator] run damage @s 8 minecraft:mob_attack by @e[type=ravager,tag=rubra_worm,limit=1]
# 光っている節への攻撃
execute as @e[type=interaction,tag=rubra_hit] if data entity @s attack run function neofunction:entity/skill/boss/rubra_worm/hit
# ミラの光（体力が半分を切ったら）
execute if data storage neofunction:rubra worm{phase:2} run function neofunction:entity/skill/boss/rubra_worm/flash
