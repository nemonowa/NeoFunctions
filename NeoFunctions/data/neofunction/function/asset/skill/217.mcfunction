# 命名：217
# 説明：共鳴短律【レゾナンス・カデンツァ】
# >
# =/function neofunction:asset/skill/217

# 内容
# 半径8m以内のプレイヤーにバフを1分間付与する

effect give @a[distance=..8] minecraft:glowing 180 116 true

# 演出

playsound minecraft:block.enchantment_table.use record @s ~ ~ ~ 2.0 1.2
particle minecraft:enchant ~ ~ ~ 0.2 0.5 0.2 1 1000 force

# SP消費：30SP消費
scoreboard players remove @s SP 30

# クールタイム
# scoreboard players add @s CT 2

