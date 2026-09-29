# 命名：劇薬強襲
# 説明：発動すると自身にskill242タグを付与する。既に付与されている場合は解除する（トグル）。
# 説明：実際の効果処理は別の部分で実装するため、ここではタグ管理のみを行う。
# >
# =/function neofunction:asset/skill/242

tag @s remove skill245
tag @s remove skill246
tag @s remove skill247
tag @s remove skill248

execute if entity @s[tag=skill242] run tellraw @s {"text":"劇薬強襲 OFF","color":"red"}
execute if entity @s[tag=skill242] run playsound minecraft:block.lever.click master @s ~ ~ ~ 1 0.7
execute if entity @s[tag=skill242] run return run tag @s remove skill242

tag @s add skill242
execute if entity @s[tag=skill242] run tellraw @s {"text":"劇薬強襲 ON","color":"green"}
execute if entity @s[tag=skill242] run playsound minecraft:block.lever.click master @s ~ ~ ~ 1 1.5
