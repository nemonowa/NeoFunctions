# 命名：offhand
# 説明：（説明未記載）
# >/adv
# =/function neofunction:system/adv/using_item/fireweapon/shot/offhand

execute rotated as @s anchored eyes run summon arrow ^ ^ ^-0.1 {Tags:["Motion"]}
execute as @e[type=arrow,limit=1,sort=nearest,tag=Motion] at @s rotated as @p run function neofunction:system/adv/using_item/fireweapon/shot/.motion

function neofunction:system/adv/shot_crossbow/fireweapon/shot/offhand