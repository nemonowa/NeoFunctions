# 命名：get_data
# 説明：（説明未記載）
# >
# =/function admin:block_to_display/get_data
 # get_data.mcfunction
 # 
 #
 # Created by .
##
data remove storage admin:btd Temp
data modify storage admin:btd Passengers set from entity @s Passengers
data remove storage admin:btd Passengers[].Motion
data remove storage admin:btd Passengers[].Invulnerable
data remove storage admin:btd Passengers[].Air
data remove storage admin:btd Passengers[].OnGround
# 【変更：2026-09-27 26.3対応】エンティティの FallDistance は 1.21.5 で fall_distance に変わった
data remove storage admin:btd Passengers[].fall_distance
data remove storage admin:btd Passengers[].Pos
data remove storage admin:btd Passengers[].Fire
data remove storage admin:btd Passengers[].UUID
data remove storage admin:btd Passengers[].Motion

data remove storage admin:btd Passengers[].glow_color_override
data remove storage admin:btd Passengers[].shadow_radius
data remove storage admin:btd Passengers[].PortalCooldown
data remove storage admin:btd Passengers[].width
data remove storage admin:btd Passengers[].height
data remove storage admin:btd Passengers[].Tags

summon text_display ~ ~ ~ {Tags:["resolve","del"],alignment:"center",text:{"storage": "admin:btd","nbt": "Passengers"},view_range:0}
data modify storage admin:btd Temp.text set string entity @e[tag=resolve,limit=1,sort=nearest] text 1 -1

function admin:block_to_display/get_data_macro with storage admin:btd Temp

kill @e[tag=resolve]
data remove storage admin:btd Temp