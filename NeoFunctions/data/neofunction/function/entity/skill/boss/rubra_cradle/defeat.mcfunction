# 命名：defeat
# 説明：欠片がすべて無くなった：影が消え、セレンが正気に戻る。6 つとも守り石で抜いたなら choice.selen_way は stone、それ以外は break。セレンの場面（438）へ
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_cradle/tick
# =/function neofunction:entity/skill/boss/rubra_cradle/defeat

# 内容
data modify storage neofunction:rubra cradle.state set value "done"
data modify storage neofunction:rubra choice.selen_way set value "break"
# 欠片を一度も砕かず、すべて守り石で抜いたなら stone
execute if data storage neofunction:rubra cradle{brk:0} run data modify storage neofunction:rubra choice.selen_way set value "stone"
execute as @e[type=vex,tag=rubra_shadow,distance=..40] at @s run particle minecraft:smoke ~ ~0.5 ~ 0.2 0.3 0.2 0.02 10 normal
execute as @e[type=vex,tag=rubra_shadow,distance=..40] run tag @s add del
kill @e[tag=rubra_cradle_part]
tag @a remove rubra_puller
particle minecraft:end_rod ~ ~1.5 ~ 1 1.5 1 0.05 120 normal
playsound minecraft:block.beacon.deactivate hostile @a[distance=..48] ~ ~ ~ 2 0.8
tag @s add del
# 報酬（宝箱・帰還ゲート）を出す
function neofunction:system/world/ceresta/rubra/d3/reward_build
function neofunction:system/adv/tick/quest/40/d3/438
