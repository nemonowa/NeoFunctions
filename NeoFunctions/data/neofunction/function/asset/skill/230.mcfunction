# 命名：230
# 説明：使役騎士TAMERパッシブスキル
# >(呼び出し元が見つかりませんでした)
# =/function neofunction:asset/skill/230

# 内容：3分間の採掘速度上昇

effect give @s minecraft:haste 180 0

# 演出
playsound block.amethyst_block.resonate record @s ~ ~ ~ 1.0 2.0

# 消費SP
scoreboard players remove @s SP 10
