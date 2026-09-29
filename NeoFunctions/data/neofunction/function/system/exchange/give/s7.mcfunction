# 命名：7
# 説明：金貨が64個落ちた時
# 説明：花火の星
# >/function neofunction:entity/tick
# =/function neofunction:system/exchange/give/s7



#花火の星
execute as @s at @s run title @a[distance=..4] actionbar [{"text":"魔力が集結して","color":"light_purple","bold":false,"italic":false},{"text":"上位の依代","color":"dark_blue","bold":true,"italic":false},{"text":"に変化した！","color":"light_purple","bold":false,"italic":false}]

execute as @s at @s run loot spawn ~ ~ ~ loot neofunction:item/8

execute as @s at @s run particle minecraft:soul
execute as @s at @s run particle soul_fire_flame ~ ~ ~ 0 0 0 1 10 normal

execute as @s at @s run playsound minecraft:entity.allay.item_given record @a[distance=..4] ~ ~ ~ 1 0.5

kill @s