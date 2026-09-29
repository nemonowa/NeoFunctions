# 命名：horse
# 説明：馬での移動時1s処理
# >adv
# =/function neofunction:system/adv/tick/entity_scores/horse

execute on vehicle if entity @s[tag=item1696] at @s run function neofunction:system/adv/tick/cmd/1696
execute on vehicle if entity @s[tag=item1697] at @s run function neofunction:system/adv/tick/cmd/1697
execute on vehicle if entity @s[tag=item1698] at @s run function neofunction:system/adv/tick/cmd/1698
execute on vehicle if entity @s[tag=item1699] at @s run function neofunction:system/adv/tick/cmd/1699



scoreboard players reset @s horseMove