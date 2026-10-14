# 命名：quake_hurt
# 説明：【追加：2026-10-14 ルブラ編】地響きの輪が当たった：6 ダメージと少し打ち上げ（一人一度）
# 実行条件：実行者 当たった人
# >/function neofunction:entity/skill/boss/rubra_worm/quake_ring
# =/function neofunction:entity/skill/boss/rubra_worm/quake_hurt

# 内容
tag @s add rubra_wqhit
damage @s 6 minecraft:mob_attack by @e[type=ravager,tag=rubra_worm,limit=1]
effect give @s minecraft:levitation 1 1 true
