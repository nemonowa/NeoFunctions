# 命名：tick
# 説明：ソウルイーターの毎 tick の処理。頭はいつでも攻撃が通る。胴体はふだん弾き、柱か壁にぶつかってスタンしているあいだだけ全節に通る（×1.5）。花・巨人の像・ミラの光の仕組みはやめた。技：突き上げ（てっぺんで砂の吐息、潜るときに地響き）・突進（柱や壁にぶつかるとスタン）・後半は連続突き上げとのしかかり
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
# 動き（状態ごと）
execute if data storage neofunction:rubra worm{state:"warn"} run function neofunction:entity/skill/boss/rubra_worm/warn
execute if data storage neofunction:rubra worm{state:"cwarn"} run function neofunction:entity/skill/boss/rubra_worm/charge_warn
execute if data storage neofunction:rubra worm{state:"charge"} run function neofunction:entity/skill/boss/rubra_worm/charge_tick
execute if data storage neofunction:rubra worm{state:"stun"} run function neofunction:entity/skill/boss/rubra_worm/stun_tick
execute if data storage neofunction:rubra worm{state:"s_wait"} run function neofunction:entity/skill/boss/rubra_worm/slam_wait
execute unless data storage neofunction:rubra worm{state:"warn"} unless data storage neofunction:rubra worm{state:"cwarn"} unless data storage neofunction:rubra worm{state:"charge"} unless data storage neofunction:rubra worm{state:"stun"} unless data storage neofunction:rubra worm{state:"s_wait"} run function neofunction:entity/skill/boss/rubra_worm/move with storage neofunction:rubra worm.goal
# 体（頭と 12 の節）を、頭の通った跡に並べる（スタン中は床に横たわったまま動かさない）
execute unless data storage neofunction:rubra worm{state:"stun"} run function neofunction:entity/skill/boss/rubra_worm/body
# 地上に出ているときの体当たり（スタン中・突進中はなし。突進は charge_tick で当てる）
execute unless data storage neofunction:rubra worm{state:"stun"} unless data storage neofunction:rubra worm{state:"charge"} at @s if entity @s[y=-42,dy=30] as @a[distance=..2.8,gamemode=!spectator] run damage @s 8 minecraft:mob_attack by @e[type=ravager,tag=rubra_worm,limit=1]
# 節への攻撃（スタン中だけ通る）
execute as @e[type=interaction,tag=rubra_hit] if data entity @s attack run function neofunction:entity/skill/boss/rubra_worm/hit
# 砂の吐息の弾・地響きの輪
execute as @e[type=item_display,tag=rubra_wsand] at @s run function neofunction:entity/skill/boss/rubra_worm/sand_tick
execute as @e[type=marker,tag=rubra_wquake,limit=1] at @s run function neofunction:entity/skill/boss/rubra_worm/quake_tick
