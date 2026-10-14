# 命名：charge_warn
# 説明：【追加：2026-10-14 ルブラ編】突進の予告のあいだ（毎 tick）：いちばん近い人のほうを向いて身をかがめる（砂ぼこり）。数え終わったら、そのときの向きで突進
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_worm/tick
# =/function neofunction:entity/skill/boss/rubra_worm/charge_warn

# 内容
tp @s ~ ~ ~ facing entity @p[gamemode=!spectator] feet
tp @s ~ ~ ~ ~ 0
execute rotated as @s positioned ^ ^0.2 ^2 run particle minecraft:dust{color:[1.0,0.2,0.1],scale:1.4} ~ ~ ~ 0.4 0 0.4 0 6 force @a[distance=..64]
particle minecraft:block{block_state:"minecraft:red_sand"} ~ ~ ~ 1 0.2 1 0 6 normal
execute store result score #rubra_t temp run data get storage neofunction:rubra worm.t
scoreboard players remove #rubra_t temp 1
execute store result storage neofunction:rubra worm.t int 1 run scoreboard players get #rubra_t temp
execute if score #rubra_t temp matches ..0 run data modify storage neofunction:rubra worm.state set value "charge"
execute if score #rubra_t temp matches ..0 run playsound minecraft:entity.ravager.attack hostile @a[distance=..64] ~ ~ ~ 2 0.5
