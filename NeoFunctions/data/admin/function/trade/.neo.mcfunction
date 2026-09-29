# 命名：.neo
# 説明：交易作成処理
# >/execute in minecraft:the_end run tp @s 1315.30 128.00 1293.50 -1712.84 90.00
# =/function admin:trade/.neo



# 交易可能に最適化する
execute as @e[type=minecraft:villager,limit=1,sort=nearest,distance=..3] at @s run function .command:trade/neo/1

#交易品目の個数指定：７品目（見開き最大は７つ）
data merge entity @e[type=minecraft:villager,limit=1,sort=nearest,distance=..3] {Offers:{Recipes:[{buy:{},buyB:{},sell:{}},{buy:{},buyB:{},sell:{}},{buy:{},buyB:{},sell:{}},{buy:{},buyB:{},sell:{}},{buy:{},buyB:{},sell:{}},{buy:{},buyB:{},sell:{}},{buy:{},buyB:{},sell:{}}]}}

# チェストから内容を作成
execute as @e[type=minecraft:villager,limit=1,sort=nearest,distance=..3] at @s run function .command:trade/neo/2

# 通知
execute as @e[type=minecraft:villager,limit=1,sort=nearest,distance=..3] at @s run function .command:trade/neo/3

say この村人は交易すると経験値を落とします。