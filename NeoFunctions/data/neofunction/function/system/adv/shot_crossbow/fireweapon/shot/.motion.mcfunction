# 命名：.motion
# 説明：矢のモーションをいじる
# >/function neofunction:system/adv/shot_crossbow/fireweapon/shot/mainhand
# >/function neofunction:system/adv/shot_crossbow/fireweapon/shot/offhand
# =/function neofunction:system/adv/shot_crossbow/fireweapon/shot/.motion

#X
$execute store result storage neofunction:fireweapon xmotion double $(speed) run data get entity @s Motion[0] 100
execute store result entity @s Motion[0] double 0.01 run data get storage neofunction:fireweapon xmotion 1
#Y
$execute store result storage neofunction:fireweapon ymotion double $(speed) run data get entity @s Motion[1] 100
execute store result entity @s Motion[1] double 0.01 run data get storage neofunction:fireweapon ymotion 1
#Z
$execute store result storage neofunction:fireweapon zmotion double $(speed) run data get entity @s Motion[2] 100
execute store result entity @s Motion[2] double 0.01 run data get storage neofunction:fireweapon zmotion 1

#矢の速度処理用
#tellraw @p {"translate":"%1$s" ,"with":[{"entity": "@e[limit=1,type=arrow,sort=nearest]","nbt": "Motion"}]}
