# 命名：skill-melee
# 説明：発動時、。（SP10消費）
# >/function asset/skill/
# =/function neofunction:player/job/shooter/skill-melee


# 着火
effect give @e[tag=enemy,distance=..16] minecraft:wither 30 0 true


# SP消費：
scoreboard players remove @s SP 3




