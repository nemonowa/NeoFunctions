# 命名：999
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:consume_item/.all
# =/function neofunction:system/adv/player_hurt_entity/999


## 内容
tellraw @s [{"text":"[通知]","color":"dark_red"},{"selector":"@s"},{"text":"が"},{"selector":"@e[distance=0.01..8,tag=!argonaute]"},{"text":"を世界から抹消した。"}]
kill @e[distance=0.01..8,tag=!argonaute]

playsound minecraft:entity.ghast.death record @s ~ ~ ~ 1 2 1
particle heart ~ ~1.2 ~ 0.5 0.5 0 1 10 normal

## 再使用のために進捗剥奪
advancement revoke @s only neofunction:player_hurt_entity/999