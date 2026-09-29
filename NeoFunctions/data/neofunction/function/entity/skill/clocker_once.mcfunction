# 命名：clocker_once
# 説明：（説明未記載）
# >/function neofunction:entity/skill/clock/5s
# =/function neofunction:entity/skill/clocker_once

data remove storage neofunction:skill/clocker Temp
data modify storage neofunction:skill/clocker Temp.Rotation set from entity @s Rotation
# 180/24000*2=0.015
execute store result storage neofunction:skill/clocker Temp.Macro.Time float 0.015 run time of minecraft:overworld query minecraft:day
function neofunction:entity/skill/clocker_macro with storage neofunction:skill/clocker Temp.Macro
# 補正位相：18000が0時なので補正値+6000t=+90°、1s分進める 20*0.18=3.6
execute rotated as @s rotated ~93.6 ~ in neodimension:nexus positioned 0.0 0.0 0.0 run summon marker ^ ^ ^1 {Tags:["posMarker","del"]}
data modify storage neofunction:skill/clocker Temp.right_rotation set value [0f,0f,0f,1f]
execute store result storage neofunction:skill/clocker Temp.right_rotation[0] float 0.0001 run data get entity @e[tag=posMarker,limit=1] Pos[0] 10000
execute store result storage neofunction:skill/clocker Temp.right_rotation[3] float 0.0001 run data get entity @e[tag=posMarker,limit=1] Pos[2] 10000
#tellraw @p {"entity": "@e[tag=posMarker,limit=1]","nbt": "Pos"}
data modify entity @s Rotation set from storage neofunction:skill/clocker Temp.Rotation
kill @e[tag=posMarker,limit=1]