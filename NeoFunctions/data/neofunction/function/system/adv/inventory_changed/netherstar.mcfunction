# 命名：netherstar
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:inventory_changed/netherstar
# =/function neofunction:system/adv/inventory_changed/netherstar

# 内容
execute as @s[gamemode=!creative] run function neofunction:player/level/.neo

# 再使用のために進捗剥奪
advancement revoke @s only neofunction:inventory_changed/netherstar