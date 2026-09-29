# 命名：216
# 説明：レゾナンス・リカバリー
# 説明：運命旋律
# >
# =/function neofunction:asset/skill/216

# 内容

tag @s add 216


# 半径16m以内の運命刻印持ちの数に応じてSPを回復するバフを3分間付与する

effect give @s minecraft:glowing 180 117 true
effect give @s minecraft:bad_omen 180 0 true

# 演出
playsound minecraft:block.enchantment_table.use record @s ~ ~ ~ 2.0 1.2
particle minecraft:enchant ~ ~ ~ 0.2 0.5 0.2 1 1000 force


schedule function neofunction:asset/skill/216/1 1t append

schedule function neofunction:asset/skill/216/2 5t append

schedule function neofunction:asset/skill/216/3 10t append

schedule function neofunction:asset/skill/216/4 15t append

schedule function neofunction:asset/skill/216/5 20t append

schedule function neofunction:asset/skill/216/end 21t append

# SP消費：20SP消費
scoreboard players remove @s SP 20

# クールタイム
# scoreboard players add @s CT 2

