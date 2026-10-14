# 命名：tick
# 説明：【追加：2026-10-09 ルブラ編】涸れの番人の毎 tick の処理（本体が実行）：体力、いなくなったときの片付け、洗われているかどうか、四隅の水門、攻撃
# 説明：黒いあいだは攻撃が通らない（耐性 V）。四隅の水門を 10 秒のうちにすべて開けると洗われ、12 秒のあいだ攻撃が通る
# 実行条件：実行者・実行位置 本体（iron_golem、タグ rubra_keeper）
# >/function neofunction:entity/skill/boss/.neo
# =/function neofunction:entity/skill/boss/rubra_keeper/tick

# 内容
execute if data storage neofunction:rubra keeper{state:"dead"} run return 0
execute if data storage neofunction:rubra keeper{state:"dying"} run return run function neofunction:entity/skill/boss/rubra_keeper/dying
# 体力
execute store result score #rk_hp temp run data get entity @s Health
execute if score #rk_hp temp matches ..25 run return run function neofunction:entity/skill/boss/rubra_keeper/die_start
execute if score #rk_hp temp matches ..350 unless data storage neofunction:rubra keeper{phase:2} run function neofunction:entity/skill/boss/rubra_keeper/phase2
# 近くに誰もいなくなったら、片付けてやり直しにする
execute unless entity @a[distance=..40,gamemode=!spectator] run return run function neofunction:entity/skill/boss/rubra_keeper/despawn
# 洗われているか
execute store result score #rk_w temp run data get storage neofunction:rubra keeper.wash
execute if score #rk_w temp matches 1.. run scoreboard players remove #rk_w temp 1
execute store result storage neofunction:rubra keeper.wash int 1 run scoreboard players get #rk_w temp
execute if score #rk_w temp matches 0 run effect give @s minecraft:resistance 2 4 true
execute if score #rk_w temp matches 1 run function neofunction:entity/skill/boss/rubra_keeper/reblack
execute if score #rk_w temp matches 1.. run particle minecraft:dripping_water ~ ~4 ~ 1.2 2 1.2 0 4 normal
execute if score #rk_w temp matches 0 run particle minecraft:falling_dust{block_state:"minecraft:black_concrete"} ~ ~3 ~ 1 2 1 0 2 normal
# 四隅の水門
function neofunction:entity/skill/boss/rubra_keeper/valves_tick
# 攻撃（3.5 秒ごと）
execute store result score #rk_t temp run data get storage neofunction:rubra keeper.t
scoreboard players add #rk_t temp 1
execute if score #rk_t temp matches 70.. run scoreboard players set #rk_t temp 0
execute store result storage neofunction:rubra keeper.t int 1 run scoreboard players get #rk_t temp
execute if score #rk_t temp matches 0 run function neofunction:entity/skill/boss/rubra_keeper/attack
execute unless data storage neofunction:rubra keeper{whipt:0} run function neofunction:entity/skill/boss/rubra_keeper/whip_tick
