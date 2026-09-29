# 命名：200
# 説明：白刃騎士KNIGHTトリガースキル
# >
# =/function neofunction:asset/skill/200


# 内容：3分間の攻撃力上昇
effect give @s minecraft:strength 180 0

# 演出
playsound block.anvil.use record @s ~ ~ ~ 0.4 0.5

# 消費SP
scoreboard players remove @s SP 10


