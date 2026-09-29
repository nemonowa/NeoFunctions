# 命名：治癒のポーション
# 説明：発動すると自身にskill245タグを付与する。既に付与されている場合は解除する（トグル）。
# 説明：実際の効果処理は別の部分で実装するため、ここではタグ管理のみを行う。
# >
# =/function neofunction:asset/skill/245

tag @s remove skill242
tag @s remove skill243
tag @s remove skill244
tag @s remove skill249

execute if entity @s[tag=skill245] run tellraw @s {"text":"治癒のポーション OFF","color":"red"}
execute if entity @s[tag=skill245] run playsound minecraft:block.lever.click master @s ~ ~ ~ 1 0.7
execute if entity @s[tag=skill245] run return run tag @s remove skill245

tag @s add skill245
execute if entity @s[tag=skill245] run tellraw @s {"text":"治癒のポーション ON","color":"green"}
execute if entity @s[tag=skill245] run playsound minecraft:block.lever.click master @s ~ ~ ~ 1 1.5
