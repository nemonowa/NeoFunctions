# 命名：1820
# 説明：システム
# 説明：進捗達成時
# >
# =/function neofunction:system/adv/fishing_rod_hooked/1820/1

# 内容
execute if entity @s[gamemode=adventure] run return run tellraw @s "§4アドベンチャーモードでは使用できません！"
execute anchored eyes positioned ^ ^ ^50 positioned over world_surface positioned ~ ~45.25 ~ run function neofunction:system/adv/fishing_rod_hooked/1820/3
execute anchored eyes positioned ^ ^ ^50 positioned over world_surface positioned ~ ~45 ~ run function neofunction:system/adv/fishing_rod_hooked/1820/2
