# 命名：アドレナリン注射
# 説明：発動すると自身にskill246タグを付与する。既に付与されている場合は解除する（トグル）。
# 説明：実際の効果処理は別の部分で実装するため、ここではタグ管理のみを行う。
# >
# =/function neofunction:asset/skill/246

tag @s remove skill242
tag @s remove skill243
tag @s remove skill244
tag @s remove skill249

execute if entity @s[tag=skill246] run tellraw @s {"text":"アドレナリン注射 OFF","color":"red"}
execute if entity @s[tag=skill246] run playsound minecraft:block.lever.click master @s ~ ~ ~ 1 0.7
execute if entity @s[tag=skill246] run return run tag @s remove skill246

tag @s add skill246
execute if entity @s[tag=skill246] run tellraw @s {"text":"アドレナリン注射 ON","color":"green"}
execute if entity @s[tag=skill246] run playsound minecraft:block.lever.click master @s ~ ~ ~ 1 1.5
