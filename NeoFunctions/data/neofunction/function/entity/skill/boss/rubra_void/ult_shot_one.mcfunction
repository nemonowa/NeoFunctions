# 命名：ult_shot_one
# 説明：黒い槍 1 人ぶん：本体の少し下から、この人の体の真ん中へ向けて 3 方向
# 実行条件：実行者・実行位置 狙われた人
# >/function neofunction:entity/skill/boss/rubra_void/ult_shot
# =/function neofunction:entity/skill/boss/rubra_void/ult_shot_one

# 内容
execute at @e[type=ghast,tag=rubra_void,limit=1] positioned ~ ~-3 ~ facing entity @s feet positioned ^ ^ ^2 run function neofunction:entity/skill/boss/rubra_void/ublt_fan
