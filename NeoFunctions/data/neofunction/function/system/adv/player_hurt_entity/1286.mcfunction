# 命名：1286
# 説明：soltheal武器で殴った時
# >/function neofunction:tick/looking_at/copy_all
# =/function neofunction:system/adv/player_hurt_entity/1286



## 内容


#title @s actionbar [{"text":"スペルアイテム🔯発動【潮癒の加護】","color":"light_purple"}]

effect give @s minecraft:instant_health
#effect give @s minecraft:regeneration 5 0
particle minecraft:heart ~ ~ ~ 0.2 0.2 0.2 0.1 20 force
playsound block.water.ambient record @s ~ ~ ~ 0.4 1.0
