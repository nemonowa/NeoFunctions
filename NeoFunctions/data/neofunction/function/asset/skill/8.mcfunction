# 命名：8
# 説明：エンティティ処理
# >
# =/function neofunction:asset/skill/8


# 内容 強制しゃがませシェルカーを足元に召喚
#execute at @s positioned ~ ~-1.8 ~ run function neofunction:asset/summon/51 \\1.20.1まで
execute at @s positioned ~ ~0.8 ~ run function neofunction:asset/summon/51

# 消費SP
scoreboard players remove @s SP 4

