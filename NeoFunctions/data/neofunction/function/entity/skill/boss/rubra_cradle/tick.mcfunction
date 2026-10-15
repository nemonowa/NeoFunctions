# 命名：tick
# 説明：星喰みのセレンの毎 tick の処理（本体が実行）：欠片を回す、欠片への攻撃（砕く）、守り石での引き剥がし、攻撃、影の無敵の切り替え
# 説明：守りの形（耐性 V）→ 欠片 4 つをすべて無くすと 8 秒気絶して攻撃が通る → また守りの形、をくり返す。体力を 60 まで削ると正気に戻る
# 実行条件：実行者・実行位置 本体（evoker、タグ rubra_eater）
# >/function neofunction:entity/skill/boss/.neo
# =/function neofunction:entity/skill/boss/rubra_cradle/tick

# 内容
execute unless data storage neofunction:rubra cradle{state:"fight"} run return 0
execute unless entity @a[distance=..40,gamemode=!spectator] run return run function neofunction:entity/skill/boss/rubra_cradle/despawn
# 体力を 60 まで削ると正気に戻る（欠片では体力は減らない）。気絶のあいだは気絶の処理だけ
execute store result score #rc_hp temp run data get entity @s Health
execute if score #rc_hp temp matches ..60 run return run function neofunction:entity/skill/boss/rubra_cradle/defeat
execute unless data storage neofunction:rubra cradle{stun:0} run return run function neofunction:entity/skill/boss/rubra_cradle/stun_tick
# 欠片を回す（向きの印を 1 tick に 3 度ずつ回し、90 度おきに 4 つを置く）
execute as @e[type=marker,tag=rubra_cradle_rot,limit=1] at @s run tp @s ~ ~ ~ ~3 0
execute as @e[type=marker,tag=rubra_cradle_rot,limit=1] at @s run function neofunction:entity/skill/boss/rubra_cradle/frags
# 欠片への攻撃（砕く）
execute as @e[type=interaction,tag=rubra_fraghit] if data entity @s attack run function neofunction:entity/skill/boss/rubra_cradle/hit
# 守り石での引き剥がし
execute unless data storage neofunction:rubra cradle.pull{i:0} run function neofunction:entity/skill/boss/rubra_cradle/pull_tick
# 攻撃（2.5 秒ごと）と、赤い光の矢の予告
execute store result score #rc_t temp run data get storage neofunction:rubra cradle.t
scoreboard players add #rc_t temp 1
execute if score #rc_t temp matches 50.. run scoreboard players set #rc_t temp 0
execute store result storage neofunction:rubra cradle.t int 1 run scoreboard players get #rc_t temp
execute if score #rc_t temp matches 0 run function neofunction:entity/skill/boss/rubra_cradle/attack
execute unless data storage neofunction:rubra cradle{arrow:0} run function neofunction:entity/skill/boss/rubra_cradle/arrow_tick
# 星の雨の印
execute as @e[type=marker,tag=rubra_star] at @s run function neofunction:entity/skill/boss/rubra_cradle/star_tick
# 影（広間の中も、守り石の光の中でだけ斬れる）
execute as @e[type=vex,tag=rubra_shadow,distance=..24] at @s run function neofunction:system/rubra/d3/shadow_light
particle minecraft:dust{color:[0.1,0.05,0.1],scale:1.4} ~ ~1.5 ~ 0.5 1 0.5 0 2 normal
