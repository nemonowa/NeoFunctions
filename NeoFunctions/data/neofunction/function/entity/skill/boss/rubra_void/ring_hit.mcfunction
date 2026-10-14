# 命名：ring_hit
# 説明：【追加：2026-10-09 ルブラ編】衝撃波が当たった：7 ダメージと少し打ち上げる（一人一度）
# 説明：【変更：2026-10-14】エリートチャレンジ（fin.elite）ではダメージ 1.5 倍
# 実行条件：実行者 当たった人
# >/function neofunction:entity/skill/boss/rubra_void/ring_wave
# =/function neofunction:entity/skill/boss/rubra_void/ring_hit

# 内容
tag @s add rubra_ringhit
execute unless data storage neofunction:rubra fin{elite:1b} run damage @s 7 minecraft:magic by @e[type=ghast,tag=rubra_void,limit=1]
execute if data storage neofunction:rubra fin{elite:1b} run damage @s 11 minecraft:magic by @e[type=ghast,tag=rubra_void,limit=1]
effect give @s minecraft:levitation 1 3 true
