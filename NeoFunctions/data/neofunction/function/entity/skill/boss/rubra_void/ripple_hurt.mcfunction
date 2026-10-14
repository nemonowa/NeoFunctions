# 命名：ripple_hurt
# 説明：【追加：2026-10-13 ルブラ編】黒い水の波が当たった：7 ダメージと少し打ち上げ（一人一度）
# 説明：【変更：2026-10-14】エリートチャレンジ（fin.elite）ではダメージ 1.5 倍
# 実行条件：実行者 当たった人
# >/function neofunction:entity/skill/boss/rubra_void/ripple_ring
# =/function neofunction:entity/skill/boss/rubra_void/ripple_hurt

# 内容
tag @s add rubra_riphit
execute unless data storage neofunction:rubra fin{elite:1b} run damage @s 7 minecraft:magic by @e[type=ghast,tag=rubra_void,limit=1]
execute if data storage neofunction:rubra fin{elite:1b} run damage @s 11 minecraft:magic by @e[type=ghast,tag=rubra_void,limit=1]
effect give @s minecraft:levitation 1 2 true
