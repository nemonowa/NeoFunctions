# 命名：despawn
# 説明：【追加：2026-10-09 ルブラ編】近くに誰もいなくなった（全滅・離脱）：セレンと欠片を片付け、進み具合を 436 に戻す。次に球の広間へ来たら、すぐ戦いをやり直す
# 実行条件：実行者 本体
# >/function neofunction:entity/skill/boss/rubra_cradle/tick
# =/function neofunction:entity/skill/boss/rubra_cradle/despawn

# 内容
data modify storage neofunction:rubra cradle.state set value "gone"
kill @e[tag=rubra_cradle_part]
execute as @e[type=vex,tag=rubra_shadow,distance=..40] run tag @s add del
tag @a remove rubra_puller
tag @s add del
execute if score #temp main_story matches 437 run scoreboard players set #temp main_story 436
data modify storage neofunction:rubra d3.retry set value 1b
