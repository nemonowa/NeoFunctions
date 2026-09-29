# 命名：to-barrel-exc
# 説明：実行者は村人
# >/function admin:trade/to-barrel
# =/function admin:trade/to-barrel-exc

# 一度すべて埋まった完全系のデータがいる
execute as @s at @s run setblock ~ ~ ~ minecraft:barrel{Items:[{count:1,Slot:0b,id:"minecraft:barrier"},{count:1,Slot:1b,id:"minecraft:barrier"},{count:1,Slot:2b,id:"minecraft:barrier"},{count:1,Slot:3b,id:"minecraft:barrier"},{count:1,Slot:4b,id:"minecraft:barrier"},{count:1,Slot:5b,id:"minecraft:barrier"},{count:1,Slot:6b,id:"minecraft:barrier"},{count:1,Slot:7b,id:"minecraft:barrier"},{count:1,Slot:8b,id:"minecraft:barrier"},{count:1,Slot:9b,id:"minecraft:barrier"},{count:1,Slot:10b,id:"minecraft:barrier"},{count:1,Slot:11b,id:"minecraft:barrier"},{count:1,Slot:12b,id:"minecraft:barrier"},{count:1,Slot:13b,id:"minecraft:barrier"},{count:1,Slot:14b,id:"minecraft:barrier"},{count:1,Slot:15b,id:"minecraft:barrier"},{count:1,Slot:16b,id:"minecraft:barrier"},{count:1,Slot:17b,id:"minecraft:barrier"},{count:1,Slot:18b,id:"minecraft:barrier"},{count:1,Slot:19b,id:"minecraft:barrier"},{count:1,Slot:20b,id:"minecraft:barrier"},{count:1,Slot:21b,id:"minecraft:barrier"},{count:1,Slot:22b,id:"minecraft:barrier"},{count:1,Slot:23b,id:"minecraft:barrier"},{count:1,Slot:24b,id:"minecraft:barrier"},{count:1,Slot:25b,id:"minecraft:barrier"},{count:1,Slot:26b,id:"minecraft:barrier"}]}

# 一つずつ抽出
data modify block ~ ~ ~ Items[{Slot:0b}].id set from entity @s Offers.Recipes[0].buy.id
data modify block ~ ~ ~ Items[{Slot:0b}].count set from entity @s Offers.Recipes[0].buy.count
execute if data entity @s Offers.Recipes[0].buy.components run data modify block ~ ~ ~ Items[{Slot:0b}].components set from entity @s Offers.Recipes[0].buy.components

execute if data entity @s Offers.Recipes[0].buyB run data modify block ~ ~ ~ Items[{Slot:9b}].id set from entity @s Offers.Recipes[0].buyB.id
execute if data entity @s Offers.Recipes[0].buyB run data modify block ~ ~ ~ Items[{Slot:9b}].count set from entity @s Offers.Recipes[0].buyB.count
execute if data entity @s Offers.Recipes[0].buyB.components run data modify block ~ ~ ~ Items[{Slot:9b}].components set from entity @s Offers.Recipes[0].buyB.components

data modify block ~ ~ ~ Items[{Slot:18b}].id set from entity @s Offers.Recipes[0].sell.id
data modify block ~ ~ ~ Items[{Slot:18b}].count set from entity @s Offers.Recipes[0].sell.count
execute if data entity @s Offers.Recipes[0].sell.components run data modify block ~ ~ ~ Items[{Slot:18b}].components set from entity @s Offers.Recipes[0].sell.components

data modify block ~ ~ ~ Items[{Slot:1b}].id set from entity @s Offers.Recipes[1].buy.id
data modify block ~ ~ ~ Items[{Slot:1b}].count set from entity @s Offers.Recipes[1].buy.count
execute if data entity @s Offers.Recipes[1].buy.components run data modify block ~ ~ ~ Items[{Slot:1b}].components set from entity @s Offers.Recipes[1].buy.components

execute if data entity @s Offers.Recipes[1].buyB run data modify block ~ ~ ~ Items[{Slot:10b}].id set from entity @s Offers.Recipes[1].buyB.id
execute if data entity @s Offers.Recipes[1].buyB run data modify block ~ ~ ~ Items[{Slot:10b}].count set from entity @s Offers.Recipes[1].buyB.count
execute if data entity @s Offers.Recipes[1].buyB.components run data modify block ~ ~ ~ Items[{Slot:10b}].components set from entity @s Offers.Recipes[1].buyB.components

data modify block ~ ~ ~ Items[{Slot:19b}].id set from entity @s Offers.Recipes[1].sell.id
data modify block ~ ~ ~ Items[{Slot:19b}].count set from entity @s Offers.Recipes[1].sell.count
execute if data entity @s Offers.Recipes[1].sell.components run data modify block ~ ~ ~ Items[{Slot:19b}].components set from entity @s Offers.Recipes[1].sell.components

data modify block ~ ~ ~ Items[{Slot:2b}].id set from entity @s Offers.Recipes[2].buy.id
data modify block ~ ~ ~ Items[{Slot:2b}].count set from entity @s Offers.Recipes[2].buy.count
execute if data entity @s Offers.Recipes[2].buy.components run data modify block ~ ~ ~ Items[{Slot:2b}].components set from entity @s Offers.Recipes[2].buy.components

execute if data entity @s Offers.Recipes[2].buyB run data modify block ~ ~ ~ Items[{Slot:11b}].id set from entity @s Offers.Recipes[2].buyB.id
execute if data entity @s Offers.Recipes[2].buyB run data modify block ~ ~ ~ Items[{Slot:11b}].count set from entity @s Offers.Recipes[2].buyB.count
execute if data entity @s Offers.Recipes[2].buyB.components run data modify block ~ ~ ~ Items[{Slot:11b}].components set from entity @s Offers.Recipes[2].buyB.components

data modify block ~ ~ ~ Items[{Slot:20b}].id set from entity @s Offers.Recipes[2].sell.id
data modify block ~ ~ ~ Items[{Slot:20b}].count set from entity @s Offers.Recipes[2].sell.count
execute if data entity @s Offers.Recipes[2].sell.components run data modify block ~ ~ ~ Items[{Slot:20b}].components set from entity @s Offers.Recipes[2].sell.components

data modify block ~ ~ ~ Items[{Slot:3b}].id set from entity @s Offers.Recipes[3].buy.id
data modify block ~ ~ ~ Items[{Slot:3b}].count set from entity @s Offers.Recipes[3].buy.count
execute if data entity @s Offers.Recipes[3].buy.components run data modify block ~ ~ ~ Items[{Slot:3b}].components set from entity @s Offers.Recipes[3].buy.components

execute if data entity @s Offers.Recipes[3].buyB run data modify block ~ ~ ~ Items[{Slot:12b}].id set from entity @s Offers.Recipes[3].buyB.id
execute if data entity @s Offers.Recipes[3].buyB run data modify block ~ ~ ~ Items[{Slot:12b}].count set from entity @s Offers.Recipes[3].buyB.count
execute if data entity @s Offers.Recipes[3].buyB.components run data modify block ~ ~ ~ Items[{Slot:12b}].components set from entity @s Offers.Recipes[3].buyB.components

data modify block ~ ~ ~ Items[{Slot:21b}].id set from entity @s Offers.Recipes[3].sell.id
data modify block ~ ~ ~ Items[{Slot:21b}].count set from entity @s Offers.Recipes[3].sell.count
execute if data entity @s Offers.Recipes[3].sell.components run data modify block ~ ~ ~ Items[{Slot:21b}].components set from entity @s Offers.Recipes[3].sell.components

data modify block ~ ~ ~ Items[{Slot:4b}].id set from entity @s Offers.Recipes[4].buy.id
data modify block ~ ~ ~ Items[{Slot:4b}].count set from entity @s Offers.Recipes[4].buy.count
execute if data entity @s Offers.Recipes[4].buy.components run data modify block ~ ~ ~ Items[{Slot:4b}].components set from entity @s Offers.Recipes[4].buy.components

execute if data entity @s Offers.Recipes[4].buyB run data modify block ~ ~ ~ Items[{Slot:13b}].id set from entity @s Offers.Recipes[4].buyB.id
execute if data entity @s Offers.Recipes[4].buyB run data modify block ~ ~ ~ Items[{Slot:13b}].count set from entity @s Offers.Recipes[4].buyB.count
execute if data entity @s Offers.Recipes[4].buyB.components run data modify block ~ ~ ~ Items[{Slot:13b}].components set from entity @s Offers.Recipes[4].buyB.components

data modify block ~ ~ ~ Items[{Slot:22b}].id set from entity @s Offers.Recipes[4].sell.id
data modify block ~ ~ ~ Items[{Slot:22b}].count set from entity @s Offers.Recipes[4].sell.count
execute if data entity @s Offers.Recipes[4].sell.components run data modify block ~ ~ ~ Items[{Slot:22b}].components set from entity @s Offers.Recipes[4].sell.components

data modify block ~ ~ ~ Items[{Slot:5b}].id set from entity @s Offers.Recipes[5].buy.id
data modify block ~ ~ ~ Items[{Slot:5b}].count set from entity @s Offers.Recipes[5].buy.count
execute if data entity @s Offers.Recipes[5].buy.components run data modify block ~ ~ ~ Items[{Slot:5b}].components set from entity @s Offers.Recipes[5].buy.components

execute if data entity @s Offers.Recipes[5].buyB run data modify block ~ ~ ~ Items[{Slot:14b}].id set from entity @s Offers.Recipes[5].buyB.id
execute if data entity @s Offers.Recipes[5].buyB run data modify block ~ ~ ~ Items[{Slot:14b}].count set from entity @s Offers.Recipes[5].buyB.count
execute if data entity @s Offers.Recipes[5].buyB.components run data modify block ~ ~ ~ Items[{Slot:14b}].components set from entity @s Offers.Recipes[5].buyB.components

data modify block ~ ~ ~ Items[{Slot:23b}].id set from entity @s Offers.Recipes[5].sell.id
data modify block ~ ~ ~ Items[{Slot:23b}].count set from entity @s Offers.Recipes[5].sell.count
execute if data entity @s Offers.Recipes[5].sell.components run data modify block ~ ~ ~ Items[{Slot:23b}].components set from entity @s Offers.Recipes[5].sell.components

data modify block ~ ~ ~ Items[{Slot:6b}].id set from entity @s Offers.Recipes[6].buy.id
data modify block ~ ~ ~ Items[{Slot:6b}].count set from entity @s Offers.Recipes[6].buy.count
execute if data entity @s Offers.Recipes[6].buy.components run data modify block ~ ~ ~ Items[{Slot:6b}].components set from entity @s Offers.Recipes[6].buy.components

execute if data entity @s Offers.Recipes[6].buyB run data modify block ~ ~ ~ Items[{Slot:15b}].id set from entity @s Offers.Recipes[6].buyB.id
execute if data entity @s Offers.Recipes[6].buyB run data modify block ~ ~ ~ Items[{Slot:15b}].count set from entity @s Offers.Recipes[6].buyB.count
execute if data entity @s Offers.Recipes[6].buyB.components run data modify block ~ ~ ~ Items[{Slot:15b}].components set from entity @s Offers.Recipes[6].buyB.components

data modify block ~ ~ ~ Items[{Slot:24b}].id set from entity @s Offers.Recipes[6].sell.id
data modify block ~ ~ ~ Items[{Slot:24b}].count set from entity @s Offers.Recipes[6].sell.count
execute if data entity @s Offers.Recipes[6].sell.components run data modify block ~ ~ ~ Items[{Slot:24b}].components set from entity @s Offers.Recipes[6].sell.components

data modify block ~ ~ ~ Items[{Slot:7b}].id set from entity @s Offers.Recipes[7].buy.id
data modify block ~ ~ ~ Items[{Slot:7b}].count set from entity @s Offers.Recipes[7].buy.count
execute if data entity @s Offers.Recipes[7].buy.components run data modify block ~ ~ ~ Items[{Slot:7b}].components set from entity @s Offers.Recipes[7].buy.components

execute if data entity @s Offers.Recipes[7].buyB run data modify block ~ ~ ~ Items[{Slot:16b}].id set from entity @s Offers.Recipes[7].buyB.id
execute if data entity @s Offers.Recipes[7].buyB run data modify block ~ ~ ~ Items[{Slot:16b}].count set from entity @s Offers.Recipes[7].buyB.count
execute if data entity @s Offers.Recipes[7].buyB.components run data modify block ~ ~ ~ Items[{Slot:16b}].components set from entity @s Offers.Recipes[7].buyB.components

data modify block ~ ~ ~ Items[{Slot:25b}].id set from entity @s Offers.Recipes[7].sell.id
data modify block ~ ~ ~ Items[{Slot:25b}].count set from entity @s Offers.Recipes[7].sell.count
execute if data entity @s Offers.Recipes[7].sell.components run data modify block ~ ~ ~ Items[{Slot:25b}].components set from entity @s Offers.Recipes[7].sell.components

data modify block ~ ~ ~ Items[{Slot:8b}].id set from entity @s Offers.Recipes[8].buy.id
data modify block ~ ~ ~ Items[{Slot:8b}].count set from entity @s Offers.Recipes[8].buy.count
execute if data entity @s Offers.Recipes[8].buy.components run data modify block ~ ~ ~ Items[{Slot:8b}].components set from entity @s Offers.Recipes[8].buy.components

execute if data entity @s Offers.Recipes[8].buyB run data modify block ~ ~ ~ Items[{Slot:17b}].id set from entity @s Offers.Recipes[8].buyB.id
execute if data entity @s Offers.Recipes[8].buyB run data modify block ~ ~ ~ Items[{Slot:17b}].count set from entity @s Offers.Recipes[8].buyB.count
execute if data entity @s Offers.Recipes[8].buyB.components run data modify block ~ ~ ~ Items[{Slot:17b}].components set from entity @s Offers.Recipes[8].buyB.components

data modify block ~ ~ ~ Items[{Slot:26b}].id set from entity @s Offers.Recipes[8].sell.id
data modify block ~ ~ ~ Items[{Slot:26b}].count set from entity @s Offers.Recipes[8].sell.count
execute if data entity @s Offers.Recipes[8].sell.components run data modify block ~ ~ ~ Items[{Slot:26b}].components set from entity @s Offers.Recipes[8].sell.components


