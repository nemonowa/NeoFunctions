# 命名：マナ・リジェル
# 説明：トリガーすると、再生1を20秒を自身に付与する。SP10消費する
# >
# =/function neofunction:asset/skill/38

# 内容：

# 演出
particle minecraft:heart ~ ~1 ~ 0.5 0.3 0.5 2 5 force @s
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 2.0 1.0 1.0

# 回復付与
effect give @s minecraft:regeneration 20 0 false

# 消費MP
scoreboard players remove @s SP 10