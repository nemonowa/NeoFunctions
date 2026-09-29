# 命名：tnt
# 説明：
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/.neo
# =/function neofunction:entity/skill/boss/frog_boss/elite/temperate/tnt


execute at @s run playsound entity.tnt.primed hostile @a[distance=..32] ~ ~ ~ 100 1.4


summon item_display 639 -51 2125 {Tags:["TDoorExplosion"],item:{id:"tnt",count:1}}
summon item_display 665 -51 2125 {Tags:["TDoorExplosion"],item:{id:"tnt",count:1}}
summon item_display 639 -51 2151 {Tags:["TDoorExplosion"],item:{id:"tnt",count:1}}
summon item_display 665 -51 2151 {Tags:["TDoorExplosion"],item:{id:"tnt",count:1}}
