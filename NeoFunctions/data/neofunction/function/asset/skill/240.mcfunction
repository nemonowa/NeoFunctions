# 命名：調薬の心得
# 説明：発動すると自身にskill240タグを付与する。既に付与されている場合は解除する（トグル）。
# 説明：実際の効果処理は別の部分で実装するため、ここではタグ管理のみを行う。
# >
# =/function neofunction:asset/skill/240


effect give @s minecraft:regeneration 60 0



# 消費SP
scoreboard players remove @s SP 10