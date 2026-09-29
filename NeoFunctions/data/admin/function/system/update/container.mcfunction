# 命名：container
# 説明：（説明未記載）
# >
# =/function admin:system/update/container
execute unless block ~ ~ ~ #admin:container if entity @s[distance=..10] positioned ^ ^ ^0.02 run return run function admin:system/update/container
execute unless block ~ ~ ~ #admin:container unless entity @s[distance=..10] run return run tellraw @s {"text":"有効なコンテナブロックが見つかりませんでした"}

execute unless data block ~ ~ ~ Items[0] run return run tellraw @s {"text":"対象のコンテナブロックは空です"}

data remove storage admin:update ContainerAfter
data remove storage admin:update Suc
data modify storage admin:update Container set from block ~ ~ ~ Items
summon item_display ~ ~ ~ {view_range:0,Tags:["del","resolve"]}
function admin:system/update/container_loop
kill @e[tag=resolve,limit=1,sort=nearest,distance=..1]
execute store result storage admin:update Suc byte 1 run data modify block ~ ~ ~ Items set from storage admin:update ContainerAfter
execute if data storage admin:update {Suc:1b} run tellraw @s {"text":"コンテナブロックの更新に成功しました"}
execute unless data storage admin:update {Suc:1b} run tellraw @s {"text":"コンテナブロックは既に最新です"}