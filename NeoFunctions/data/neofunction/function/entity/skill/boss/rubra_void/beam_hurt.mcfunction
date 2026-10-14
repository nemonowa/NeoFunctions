# 命名：beam_hurt
# 説明：【追加：2026-10-13 ルブラ編】床を薙ぐ光線が当たった：7 ダメージ（一人一度）
# 説明：【変更：2026-10-14】エリートチャレンジ（fin.elite）ではダメージ 1.5 倍
# 実行条件：実行者 当たった人
# >/function neofunction:entity/skill/boss/rubra_void/beam_draw
# =/function neofunction:entity/skill/boss/rubra_void/beam_hurt

# 内容
tag @s add rubra_beamhit
execute unless data storage neofunction:rubra fin{elite:1b} run damage @s 7 minecraft:magic by @e[type=ghast,tag=rubra_void,limit=1]
execute if data storage neofunction:rubra fin{elite:1b} run damage @s 11 minecraft:magic by @e[type=ghast,tag=rubra_void,limit=1]
