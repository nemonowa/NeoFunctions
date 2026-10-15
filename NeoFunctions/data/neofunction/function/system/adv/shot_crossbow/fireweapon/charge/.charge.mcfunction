# 命名：.charge
# 説明：装填処理
# >/function neofunction:system/adv/tick/fireweapon/reload/mainhand
# >/function neofunction:system/adv/tick/fireweapon/reload/offhand
# >/function neofunction:system/adv/tick/fireweapon/cooltime/mainhand
# >/function neofunction:system/adv/tick/fireweapon/cooltime/offhand
# =/function neofunction:system/adv/shot_crossbow/fireweapon/charge/.charge

data modify entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:charged_projectiles" set value [{id:"minecraft:arrow",count:1}]

