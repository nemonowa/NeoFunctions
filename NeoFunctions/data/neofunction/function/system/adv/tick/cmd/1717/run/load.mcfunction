# 命名：load
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/cmd/1717/run/.neo
# =/function neofunction:system/adv/tick/cmd/1717/run/load

execute if data storage neofunction:item/1717 Run.Items[0].components{"minecraft:custom_model_data":{floats:[1718.0f]}} run data modify storage neofunction:item/1717 Run.Base append value {data:{Type:"Function",Name:"set",Argument:2}}
execute if data storage neofunction:item/1717 Run.Items[0].components{"minecraft:custom_model_data":{floats:[1719.0f]}} run data modify storage neofunction:item/1717 Run.Base append value {data:{Type:"Function",Name:"add",Argument:2}}
execute if data storage neofunction:item/1717 Run.Items[0].components{"minecraft:custom_model_data":{floats:[1720.0f]}} run data modify storage neofunction:item/1717 Run.Base append value {data:{Type:"Function",Name:"sub",Argument:2}}
execute if data storage neofunction:item/1717 Run.Items[0].components{"minecraft:custom_model_data":{floats:[1721.0f]}} run data modify storage neofunction:item/1717 Run.Base append value {data:{Type:"Function",Name:"if",Argument:2}}
execute if data storage neofunction:item/1717 Run.Items[0].components{"minecraft:custom_model_data":{floats:[1722.0f]}} run data modify storage neofunction:item/1717 Run.Base append value {data:{Type:"end"}}
execute if data storage neofunction:item/1717 Run.Items[0].components{"minecraft:custom_model_data":{floats:[1723.0f]}} run data modify storage neofunction:item/1717 Run.Base append value {data:{Type:"Function",Name:"goto",Argument:1}}
execute if data storage neofunction:item/1717 Run.Items[0].components{"minecraft:custom_model_data":{floats:[1724.0f]}} run data modify storage neofunction:item/1717 Run.Base append value {data:{Type:"Var",Argument:1}}
execute if data storage neofunction:item/1717 Run.Items[0].components{"minecraft:custom_model_data":{floats:[1725.0f]}} run data modify storage neofunction:item/1717 Run.Base append value {data:{Type:"Number",Name:0}}
execute if data storage neofunction:item/1717 Run.Items[0].components{"minecraft:custom_model_data":{floats:[1726.0f]}} run data modify storage neofunction:item/1717 Run.Base append value {data:{Type:"Number",Name:1}}
execute if data storage neofunction:item/1717 Run.Items[0].components{"minecraft:custom_model_data":{floats:[1727.0f]}} run data modify storage neofunction:item/1717 Run.Base append value {data:{Type:"Number",Name:2}}
execute if data storage neofunction:item/1717 Run.Items[0].components{"minecraft:custom_model_data":{floats:[1728.0f]}} run data modify storage neofunction:item/1717 Run.Base append value {data:{Type:"Number",Name:3}}
execute if data storage neofunction:item/1717 Run.Items[0].components{"minecraft:custom_model_data":{floats:[1729.0f]}} run data modify storage neofunction:item/1717 Run.Base append value {data:{Type:"Number",Name:4}}
execute if data storage neofunction:item/1717 Run.Items[0].components{"minecraft:custom_model_data":{floats:[1730.0f]}} run data modify storage neofunction:item/1717 Run.Base append value {data:{Type:"Number",Name:5}}
execute if data storage neofunction:item/1717 Run.Items[0].components{"minecraft:custom_model_data":{floats:[1731.0f]}} run data modify storage neofunction:item/1717 Run.Base append value {data:{Type:"Number",Name:6}}
execute if data storage neofunction:item/1717 Run.Items[0].components{"minecraft:custom_model_data":{floats:[1732.0f]}} run data modify storage neofunction:item/1717 Run.Base append value {data:{Type:"Number",Name:7}}
execute if data storage neofunction:item/1717 Run.Items[0].components{"minecraft:custom_model_data":{floats:[1733.0f]}} run data modify storage neofunction:item/1717 Run.Base append value {data:{Type:"Number",Name:8}}
execute if data storage neofunction:item/1717 Run.Items[0].components{"minecraft:custom_model_data":{floats:[1734.0f]}} run data modify storage neofunction:item/1717 Run.Base append value {data:{Type:"Number",Name:9}}
execute if data storage neofunction:item/1717 Run.Items[0].components{"minecraft:custom_model_data":{floats:[1735.0f]}} run data modify storage neofunction:item/1717 Run.Base append value {data:{Type:","}}
execute if data storage neofunction:item/1717 Run.Items[0].components{"minecraft:custom_model_data":{floats:[1736.0f]}} run data modify storage neofunction:item/1717 Run.Base append value {data:{Type:"Function",Name:"skill",Argument:1}}
execute if data storage neofunction:item/1717 Run.Items[0].components{"minecraft:custom_model_data":{floats:[1737.0f]}} run data modify storage neofunction:item/1717 Run.Base append value {data:{Type:"Function",Name:"print",Argument:1}}
execute if data storage neofunction:item/1717 Run.Items[0].components{"minecraft:custom_model_data":{floats:[1738.0f]}} run data modify storage neofunction:item/1717 Run.Base append value {data:{Type:"Function",Name:"skill_set",Argument:2}}
execute if data storage neofunction:item/1717 Run.Items[0].components{"minecraft:custom_model_data":{floats:[1761.0f]}} run data modify storage neofunction:item/1717 Run.Base append value {data:{Type:"Function",Name:"mul",Argument:2}}
execute if data storage neofunction:item/1717 Run.Items[0].components{"minecraft:custom_model_data":{floats:[1762.0f]}} run data modify storage neofunction:item/1717 Run.Base append value {data:{Type:"Function",Name:"div",Argument:2}}
execute if data storage neofunction:item/1717 Run.Items[0].components{"minecraft:custom_model_data":{floats:[1763.0f]}} run data modify storage neofunction:item/1717 Run.Base append value {data:{Type:"Function",Name:"mod",Argument:2}}

data remove storage neofunction:item/1717 Run.Items[0]
execute if data storage neofunction:item/1717 Run.Items[0] run function neofunction:system/adv/tick/cmd/1717/run/load