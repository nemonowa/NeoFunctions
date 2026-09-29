# 命名：20
# 説明：HPの20%回復
# 説明：条件：もしスコアhealが4以上のプレイヤーがいれば、その対象が実行する。
# >
# =/function neofunction:system/heal/20


#HPを4点（ハート２つ分）回復
execute store result score @s heal run data get entity @s attributes[{id:"minecraft:max_health"}].base
scoreboard players operation @s heal /= $5 const






