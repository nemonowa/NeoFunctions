# 命名：charge_hurt
# 説明：突進が当たった：10 ダメージと跳ね飛ばし（一度の突進で一人一度）
# 実行条件：実行者 当たった人
# >/function neofunction:entity/skill/boss/rubra_worm/charge_tick
# =/function neofunction:entity/skill/boss/rubra_worm/charge_hurt

# 内容
tag @s add rubra_wchit
damage @s 10 minecraft:mob_attack by @e[type=ravager,tag=rubra_worm,limit=1]
effect give @s minecraft:levitation 1 3 true
