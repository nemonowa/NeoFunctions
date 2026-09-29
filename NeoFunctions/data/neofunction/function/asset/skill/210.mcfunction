# 命名：210
# 説明：共鳴騎士ARIAパッシブスキル
# >
# =/function neofunction:asset/skill/210

# 内容：3分間のソウルホープ

effect give @s minecraft:bad_omen 180 0

# 演出
playsound block.amethyst_block.resonate record @s ~ ~ ~ 1.0 2.0


# 消費SP
scoreboard players remove @s SP 10
