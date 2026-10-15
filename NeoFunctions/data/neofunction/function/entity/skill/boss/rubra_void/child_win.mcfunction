# 命名：child_win
# 説明：60 秒守りきった：滴りが消え、星の子は泉へ。結末 C の会話（end_c）
# 実行条件：実行者・実行位置 星の子
# >/function neofunction:entity/skill/boss/rubra_void/child_tick
# =/function neofunction:entity/skill/boss/rubra_void/child_win

# 内容
execute as @e[type=zombie,tag=rubra_fin_drip] run tag @s add del
scoreboard players set #temp main_story 448
particle minecraft:end_rod ~ ~ ~ 1 1 1 0.1 120 normal
kill @s
execute as @p[distance=..64] run function neofunction:system/adv/tick/quest/40/fin/end_c
