# 命名：custom_speed_straight
# 説明：（説明未記載）
# >
# =/function neofunction:entity/skill/motion/custom_speed_straight

$execute in neodimension:nexus positioned 0.0 0.0 0.0 run summon marker ^ ^ ^$(Speed) {Tags:["MotionMarker","del"]}
data modify entity @s Motion set from entity @e[tag=MotionMarker,limit=1] Pos
kill @e[tag=MotionMarker,limit=1]