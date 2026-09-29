# 命名：base
# 説明：基本コストを決定
# >/function
# =/function neofunction:player/inventory/csgui/fsanvil/recipe/base

# 内容
##価格
tag @s add nopay

##clear and giveしてstorageとscoreを同期することに。めんどいのでマクロの意見は受け付けません
execute store result storage neofunction:gui Anvil.money1.cnt int 1 run clear @p minecraft:firework_star[minecraft:custom_model_data={floats:[11.0f]}]
execute store result score money1 temp run data get storage neofunction:gui Anvil.money1.cnt 1
function neofunction:player/inventory/csgui/fsanvil/recipe/give/1 with storage neofunction:gui Anvil.money1

execute store result storage neofunction:gui Anvil.money2.cnt int 1 run clear @p minecraft:firework_star[minecraft:custom_model_data={floats:[12.0f]}]
execute store result score money2 temp run data get storage neofunction:gui Anvil.money2.cnt 1
function neofunction:player/inventory/csgui/fsanvil/recipe/give/2 with storage neofunction:gui Anvil.money2

execute store result storage neofunction:gui Anvil.money3.cnt int 1 run clear @p minecraft:firework_star[minecraft:custom_model_data={floats:[13.0f]}]
execute store result score money3 temp run data get storage neofunction:gui Anvil.money3.cnt 1
function neofunction:player/inventory/csgui/fsanvil/recipe/give/3 with storage neofunction:gui Anvil.money3

##give消音
stopsound @p * minecraft:entity.item.pickup

execute if score money1 temp matches 15.. if data entity @s Items[{Slot:10b}].components{"minecraft:custom_data":{rare:0}} run return run clear @p minecraft:firework_star[minecraft:custom_model_data={floats:[11.0f]}] 15
execute if score money1 temp matches 30.. if data entity @s Items[{Slot:10b}].components{"minecraft:custom_data":{rare:["1"]}} run return run clear @p minecraft:firework_star[minecraft:custom_model_data={floats:[11.0f]}] 30
execute if score money1 temp matches 60.. if data entity @s Items[{Slot:10b}].components{"minecraft:custom_data":{rare:["2"]}} run return run clear @p minecraft:firework_star[minecraft:custom_model_data={floats:[11.0f]}] 60
execute if score money2 temp matches 5.. if data entity @s Items[{Slot:10b}].components{"minecraft:custom_data":{rare:["3"]}} run return run clear @p minecraft:firework_star[minecraft:custom_model_data={floats:[12.0f]}] 5
execute if score money2 temp matches 20.. if data entity @s Items[{Slot:10b}].components{"minecraft:custom_data":{rare:["4"]}} run return run clear @p minecraft:firework_star[minecraft:custom_model_data={floats:[12.0f]}] 20
execute if score money2 temp matches 40.. if data entity @s Items[{Slot:10b}].components{"minecraft:custom_data":{rare:["5"]}} run return run clear @p minecraft:firework_star[minecraft:custom_model_data={floats:[12.0f]}] 40
execute if score money2 temp matches 60.. if data entity @s Items[{Slot:10b}].components{"minecraft:custom_data":{rare:["6"]}} run return run clear @p minecraft:firework_star[minecraft:custom_model_data={floats:[12.0f]}] 60
execute if score money3 temp matches 20.. if data entity @s Items[{Slot:10b}].components{"minecraft:custom_data":{rare:["7"]}} run return run clear @p minecraft:firework_star[minecraft:custom_model_data={floats:[13.0f]}] 20
execute if score money3 temp matches 40.. if data entity @s Items[{Slot:10b}].components{"minecraft:custom_data":{rare:["8"]}} run return run clear @p minecraft:firework_star[minecraft:custom_model_data={floats:[13.0f]}] 40
execute if score money3 temp matches 60.. if data entity @s Items[{Slot:10b}].components{"minecraft:custom_data":{rare:["9"]}} run return run clear @p minecraft:firework_star[minecraft:custom_model_data={floats:[13.0f]}] 60

return 0


