#>/function neofunction:system/adv/shot_crossbow/fireweapon/shot/mainhand
#>/function neofunction:system/adv/shot_crossbow/fireweapon/shot/offhand
#=/function neofunction:system/adv/shot_crossbow/fireweapon/shot/.motion

execute rotated as @s anchored eyes run summon arrow ^ ^ ^0.1 {Tags:["Motion"]}
execute as @e[type=arrow,limit=1,sort=nearest,tag=Motion] at @s rotated as @p run function neofunction:system/adv/shot_crossbow/fireweapon/shot/.motion_

function neofunction:system/adv/shot_crossbow/fireweapon/shot/mainhand