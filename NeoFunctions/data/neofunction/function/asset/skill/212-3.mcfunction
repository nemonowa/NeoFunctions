# 命名：212-3
# 説明：（説明未記載）
# >/function neofunction:asset/skill/212-2
# =/function neofunction:asset/skill/212-3

scoreboard players add #Calc1 temp 1
tag @e[tag=skill212Target] remove skill212Target
tag @e[tag=enemy,tag=!skill212Targeted,distance=..6,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1,sort=nearest] add skill212Target