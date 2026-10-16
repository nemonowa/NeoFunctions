# 命名：attack_shadow
# 説明：影を呼ぶ：セレンのまわりに影（910）を 2 体（近くに 4 体まで。多いときは代わりに矢）
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_cradle/attack
# =/function neofunction:entity/skill/boss/rubra_cradle/attack_shadow

# 内容
execute store result score #rubra_n temp if entity @e[type=vex,tag=rubra_shadow,distance=..24]
execute if score #rubra_n temp matches 3.. run return run function neofunction:entity/skill/boss/rubra_cradle/arrow_start
execute positioned ~3 ~ ~ run function neofunction:system/world/ceresta/rubra/d3/shadow
execute positioned ~-3 ~ ~ run function neofunction:system/world/ceresta/rubra/d3/shadow
