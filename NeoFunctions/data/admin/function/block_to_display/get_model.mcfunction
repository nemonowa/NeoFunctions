# 命名：get_model
# 説明：（説明未記載）
# >
# =/function admin:block_to_display/get_model
 # get_model.mcfunction
 # 
 #
 # Created by .
##
data remove storage admin:btd Temp
#data modify storage admin:btd Passengers set from entity @s Passengers
data modify storage admin:btd Passengers set value []
execute on passengers run function admin:block_to_display/get_model2



summon text_display ~ ~ ~ {Tags:["resolve","del"],alignment:"center",text:{"storage": "admin:btd","nbt": "Passengers"},view_range:0}
data modify storage admin:btd Temp.text set string entity @e[tag=resolve,limit=1,sort=nearest] text 1 -1

function admin:block_to_display/get_model_macro with storage admin:btd Temp

kill @e[tag=resolve]
data remove storage admin:btd Temp