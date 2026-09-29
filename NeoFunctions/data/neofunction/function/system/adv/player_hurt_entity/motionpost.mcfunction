# 命名：playermotion終了
# 説明：システム
# 説明：進捗達成時
# >
# =/function neofunction:system/adv/player_hurt_entity/motionpost


## 内容
tp ~ ~-1000 ~

gamemode survival @s[tag=default0]
gamemode creative @s[tag=default1]
gamemode adventure @s[tag=default2]
gamemode spectator @s[tag=default3]
tag @s[tag=default0] remove default0
tag @s[tag=default1] remove default1
tag @s[tag=default2] remove default2
tag @s[tag=default3] remove default3

tag @s remove creative

## 再使用のために進捗剥奪
advancement revoke @s only neofunction:player_hurt_entity/motionpost