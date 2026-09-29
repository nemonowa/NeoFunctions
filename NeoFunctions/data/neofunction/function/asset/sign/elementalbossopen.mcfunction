# 命名：elementalbossopen
# 説明：元素の司教のエリア解放
# >
# =/function neofunction:asset/sign/elementalbossopen

# 内容

execute unless entity @e[type=glow_item_frame,nbt={Item:{components:{"minecraft:custom_model_data":{floats:[1329.0f]}}}},distance=..16] run return run function neofunction:asset/sign/elementalbossopen/1
execute unless entity @e[type=glow_item_frame,nbt={Item:{components:{"minecraft:custom_model_data":{floats:[1330.0f]}}}},distance=..16] run return run function neofunction:asset/sign/elementalbossopen/1
execute unless entity @e[type=glow_item_frame,nbt={Item:{components:{"minecraft:custom_model_data":{floats:[1331.0f]}}}},distance=..16] run return run function neofunction:asset/sign/elementalbossopen/1
execute unless entity @e[type=glow_item_frame,nbt={Item:{components:{"minecraft:custom_model_data":{floats:[1332.0f]}}}},distance=..16] run return run function neofunction:asset/sign/elementalbossopen/1


schedule function neofunction:asset/sign/elemental/1 1s