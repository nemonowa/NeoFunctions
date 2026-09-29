# 命名：abyss
# 説明：奈落検知
# 説明：進捗達成時
# >/function neofunction:consume_item/.all
# =/function neofunction:system/adv/location/.neo/abyss

## 内容
tellraw @s[tag=ad_info] [{"text":"neofunction:system/adv/location/abyass"}]
execute as @s[gamemode=survival] run trigger kill set 7