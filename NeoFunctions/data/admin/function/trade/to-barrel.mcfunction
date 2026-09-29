# 命名：to-barrel
# 説明：交易アイテムを樽に入れる処理
# >
# =/function admin:trade/to-barrel


# 近くの村人を実行可能にして、keepで足元に樽を設置し、オファーの中身を樽にコピーする
execute unless entity @e[type=villager,limit=1,sort=nearest,distance=..8] run return run tellraw @a [{"text":"[管理者通知]交易対象がいねぇよ！","color":"red"}]
execute as @e[type=villager,limit=1,sort=nearest,distance=..8] at @s unless block ~ ~ ~ air run return run tellraw @a [{"text":"[管理者通知]そこにたるおけねえよ！","color":"red"}]
tellraw @a [{"text":"[管理者通知]","color":"red"},{"selector":"@e[type=villager,limit=1,sort=nearest,distance=..8]"},{"text":"の交易内容の編集中です"}]


execute as @e[type=villager,limit=1,sort=nearest,distance=..8] at @s run function admin:trade/to-barrel-exc

