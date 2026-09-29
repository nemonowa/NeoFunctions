# 命名：散布性毒霧
# 説明：発動すると自身にskill244タグを付与する。既に付与されている場合は解除する（トグル）。
# 説明：実際の効果処理は別の部分で実装するため、ここではタグ管理のみを行う。
# >
# =/function neofunction:asset/skill/244

execute if entity @s[tag=skill244] run tellraw @s {"text":"散布性毒霧 OFF","color":"red"}
execute if entity @s[tag=skill244] run playsound minecraft:block.lever.click master @s ~ ~ ~ 1 0.7
execute if entity @s[tag=skill244] run return run tag @s remove skill244

tag @s add skill244
execute if entity @s[tag=skill244] run tellraw @s {"text":"散布性毒霧 ON","color":"green"}
execute if entity @s[tag=skill244] run playsound minecraft:block.lever.click master @s ~ ~ ~ 1 1.5
