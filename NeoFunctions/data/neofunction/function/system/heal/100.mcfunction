# 命名：100
# 説明：HPの100%回復
# 説明：条件：もしスコアhealが4以上のプレイヤーがいれば、その対象が実行する。
# >
# =/function neofunction:system/heal/100


#HPを4点（ハート２つ分）回復
#scoreboard players operation @s heal = @s HPmax
execute store result score @s heal run data get entity @s attributes[{id:"minecraft:max_health"}].base