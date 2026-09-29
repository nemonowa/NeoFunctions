# 命名：villager
# 説明：（説明未記載）
# >
# =/function admin:update/villager
execute unless entity @e[type=villager,limit=1,sort=nearest,distance=..5] run tellraw @s {"text":"対象がいません"}
data remove storage admin:update TradeAfter
data remove storage admin:update Suc
data modify storage admin:update Trade set from entity @e[type=villager,limit=1,sort=nearest,distance=..5] Offers.Recipes
summon item_display ~ ~ ~ {Tags:["resolve","del"],view_range:0}
function admin:system/update/villager_loop
kill @e[tag=resolve,limit=1,sort=nearest,distance=..1]
execute store result storage admin:update Suc byte 1 run data modify entity @e[type=villager,limit=1,sort=nearest,distance=..5] Offers.Recipes set from storage admin:update TradeAfter
execute if data storage admin:update {Suc:1b} run tellraw @s [{"selector":"@e[type=villager,limit=1,sort=nearest,distance=..5]"},{"text":"の更新に成功しました"}]
execute unless data storage admin:update {Suc:1b} run tellraw @s [{"selector":"@e[type=villager,limit=1,sort=nearest,distance=..5]"},{"text":"は最新です"}]