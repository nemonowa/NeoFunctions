# 命名：1
# 説明：テスト用クエスト終了処理
# 実行条件：自動
# >neofunction/advancement/tick/quest/3
# =/function neofunction:system/adv/tick/quest/3/1

## 内容
execute if entity @s[tag=quest3] run function neofunction:asset/event/quest/clear
loot spawn ~ ~1 ~ loot neofunction:item/1051
execute as @e[type=minecraft:item,distance=..1] at @s run data merge entity @s {PickupDelay:5}
advancement grant @s only neoadvancement:ceresta-archive/root/1/3
advancement grant @s only neofunction:location/ceresta/archive/root/1/3
## 初期化処理
function neofunction:asset/event/quest/init
