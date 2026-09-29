# 命名：parkour
# 説明：parkour範囲外に行ったときにparkourタグを消す
# >
# =/function neofunction:system/adv/tick/dungeon/parkour

tag @s remove parkour
function neofunction:system/world/ceresta/parkour/restore with entity @s
advancement revoke @s only neofunction:location/ceresta/cosgoal
#報酬部屋を開ける
fill 1119 59 1472 1121 59 1473 air