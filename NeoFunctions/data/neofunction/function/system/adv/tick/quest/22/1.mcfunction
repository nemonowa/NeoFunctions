# 命名：1
# 説明：テスト用クエスト終了処理
# 実行条件：自動
# >neofunction/advancement/tick/quest/22
# =/function neofunction:system/adv/tick/quest/22/1

## 内容
execute if entity @s[tag=quest22] run function neofunction:asset/event/quest/clear
loot spawn ~ ~1 ~ loot neofunction:item/1695
data merge entity @e[type=minecraft:item,distance=..1,limit=1] {Item:{count:4}}
execute as @e[type=minecraft:item,distance=..1] at @s run data merge entity @s {PickupDelay:5}
advancement grant @s only neoadvancement:ceresta-archive/root/3/2
advancement grant @s only neofunction:location/ceresta/archive/root/3/2
## 初期化処理
function neofunction:asset/event/quest/init
