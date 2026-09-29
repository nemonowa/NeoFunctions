# 命名：
# 説明：ベネディクション解除用
# 説明：
# =/function neofunction:asset/skill/venedictionremove

# 内容：
tag @s remove playerbomb
tag @s remove playerwater
tag @s remove playerlev
tag @s remove playerdirtshield

playsound minecraft:block.glass.break record @s ~ ~ ~ 2 0.5
scoreboard players set @s venedictiontimerflag 0
scoreboard players set @s venedictiontimer 0
