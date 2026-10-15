# 命名：despawn
# 説明：近くに誰もいなくなった（全滅・離脱）：ソウルイーターは地の底へ戻る（片付ける）。進み具合を 414 に戻し、次に大空洞へ来たらすぐ戦いをやり直す
# 実行条件：実行者 本体
# >/function neofunction:entity/skill/boss/rubra_worm/tick
# =/function neofunction:entity/skill/boss/rubra_worm/despawn

# 内容
data modify storage neofunction:rubra worm.state set value "dead"
kill @e[tag=rubra_worm_part]
data merge entity @s {Invulnerable:0b}
tag @s add del
execute if score #temp main_story matches 415 run scoreboard players set #temp main_story 414
data modify storage neofunction:rubra d1.retry set value 1b
