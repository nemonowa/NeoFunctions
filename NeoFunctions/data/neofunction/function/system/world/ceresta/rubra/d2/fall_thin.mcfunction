# 命名：fall_thin
# 説明：泉が弱る演出：滝の水路（z3213、x966〜973、y74）に石の堰を置いて、流れを x970 の 1 本に絞る（目印 rubra_fall_src の所を凝灰岩に）。滝が細くなり、裏の扉が見える
# 説明：元に戻すのは fall_restore（終章、または制作用の reset）
# >/function neofunction:system/adv/tick/quest/40/d2/423_end
# =/function neofunction:system/world/ceresta/rubra/d2/fall_thin

# 内容
execute as @e[type=marker,tag=rubra_fall_src] at @s if block ~ ~ ~ minecraft:water run setblock ~ ~ ~ minecraft:tuff
data modify storage neofunction:rubra d2.fall set value "thin"
