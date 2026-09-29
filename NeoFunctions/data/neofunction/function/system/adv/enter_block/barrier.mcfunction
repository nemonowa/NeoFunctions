# 命名：barrier
# 説明：システム
# 説明：進捗達成時（ブロックに入る
# >/function neofunction:enter_block/barrier
# =/function neofunction:system/adv/enter_block/barrier


# 内容
scoreboard players add noclip temp 1
title @s actionbar [{"text":"No-Clipping!! ","color":"red"},{"score":{"name":"noclip","objective":"temp"}},{"text":"/99"}]

execute if score noclip temp matches 99.. run execute in neodimension:nexus run tp @s[tag=!argonaute] 358.44 97.00 133.34 -1391.78 20.73
execute if score noclip temp matches 99.. run scoreboard players set noclip temp 0

# 効果
execute as @s[tag=!argonaute] run effect give @s minecraft:wither 1 1
# execute as @s[tag=!argonaute] run scoreboard players remove @s SP 1
# execute as @s[tag=!argonaute] run damage @s 0.1 minecraft:out_of_world by 0-0-0-0-1


## 再使用のために進捗剥奪
advancement revoke @s only neofunction:enter_block/barrier