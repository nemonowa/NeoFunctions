# 命名：cosgoal
# 説明：cosをクリア時の処理
# > Function：進捗で報酬部屋に入った時を検知
# =/function neofunction:system/world/ceresta/parkour/cosgoal

#アイテム返還する
function neofunction:system/world/ceresta/parkour/restore with entity @s

#戻れないように閉じる
fill 1122 59 1471 1119 59 1473 minecraft:sandstone_slab[type=bottom]
fill 1120 60 1472 1120 62 1472 air