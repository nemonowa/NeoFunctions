# 命名：playermotion初期
# 説明：システム
# 説明：進捗達成時
# >
# =/function neofunction:system/adv/player_hurt_entity/motionpre


## 内容
tp ~ ~1000 ~
tag @s[gamemode=survival] add default0
tag @s[gamemode=creative] add default1
tag @s[gamemode=adventure] add default2
tag @s[gamemode=spectator] add default3
tag @s add creative
gamemode creative @s

## 再使用のために進捗剥奪
advancement revoke @s only neofunction:player_hurt_entity/motionpre