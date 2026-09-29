# 命名：tridentforcusschedule
# 説明：
# >
# =/function neofunction:asset/skill/55-1

#NoGravityで見た目を確保していたら削除する（ない場合は無視される）
execute at @e[tag=tridentforcus] as @e[type=trident,tag=needsMotion,limit=1] run data merge entity @s {NoGravity:0b}
execute at @e[tag=tridentforcus] as @e[type=trident,tag=needsMotion,limit=1] run function neofunction:entity/skill/motion/mid_speed_straight
