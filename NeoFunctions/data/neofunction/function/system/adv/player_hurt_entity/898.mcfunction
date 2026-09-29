# 命名：898
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:consume_item/.all
# =/function neofunction:system/adv/player_hurt_entity/898

## 内容
tellraw @a [{"text":"<"},{"selector":"@s","bold":true},{"text":"> "},{"selector":"@e[tag=hit]"},{"text":"さん！エッチなのはダメ！死刑！"}]
execute as @e[tag=hit] run damage @s 10 minecraft:generic
playsound minecraft:neo/.se/kiseion record @s ~ ~ ~ 1 1 1
execute as @e[tag=hit] at @s run particle heart ~ ~1.2 ~ 0.5 0.5 0 1 10 normal

## 再使用のために進捗剥奪
#advancement revoke @s only neofunction:player_hurt_entity/898