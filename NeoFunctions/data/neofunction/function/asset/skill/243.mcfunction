# 命名：爆裂フラスコ
# 説明：発動すると自身にskill243タグを付与する。既に付与されている場合は解除する（トグル）。
# 説明：実際の効果処理は別の部分で実装するため、ここではタグ管理のみを行う。
# >
# =/function neofunction:asset/skill/243

tag @s remove skill245
tag @s remove skill246
tag @s remove skill247
tag @s remove skill248

execute if entity @s[tag=skill243] run tellraw @s {"text":"爆裂フラスコ OFF","color":"red"}
execute if entity @s[tag=skill243] run playsound minecraft:block.lever.click master @s ~ ~ ~ 1 0.7
execute if entity @s[tag=skill243] run return run tag @s remove skill243

tag @s add skill243
execute if entity @s[tag=skill243] run tellraw @s {"text":"爆裂フラスコ ON","color":"green"}
execute if entity @s[tag=skill243] run playsound minecraft:block.lever.click master @s ~ ~ ~ 1 1.5
