# 命名：count9
# 説明：交易作成処理
# >/execute in minecraft:the_end run tp @s 1315.30 128.00 1293.50 -1712.84 90.00
# =/function admin:trade/count9




# 交易可能に最適化する
execute as @e[type=minecraft:villager,limit=1,sort=nearest,distance=..3] at @s run function admin:trade/neo/1

#交易品目の個数指定：9品目
data merge entity @e[type=minecraft:villager,limit=1,sort=nearest,distance=..3] {Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,buy:{},buyB:{},sell:{}},{rewardExp:0b,maxUses:2147483647,buy:{},buyB:{},sell:{}},{rewardExp:0b,maxUses:2147483647,buy:{},buyB:{},sell:{}},{rewardExp:0b,maxUses:2147483647,buy:{},buyB:{},sell:{}},{rewardExp:0b,maxUses:2147483647,buy:{},buyB:{},sell:{}},{rewardExp:0b,maxUses:2147483647,buy:{},buyB:{},sell:{}},{rewardExp:0b,maxUses:2147483647,buy:{},buyB:{},sell:{}},{rewardExp:0b,maxUses:2147483647,buy:{},buyB:{},sell:{}},{rewardExp:0b,maxUses:2147483647,buy:{},buyB:{},sell:{}}]}}

# チェストから内容を作成
execute as @e[type=minecraft:villager,limit=1,sort=nearest,distance=..3] at @s run function admin:trade/neo/2

# 通知
execute as @e[type=minecraft:villager,limit=1,sort=nearest,distance=..3] at @s run function admin:trade/neo/3