# 命名：mira_to_l4
# 説明：ミラが四の層（星の台の間の東の入口 841, 13, 3266）へ先回りする
# 実行条件：実行者 プレイヤー（会話の最後の Command）
# >/function neofunction:system/adv/tick/quest/40/d1/412（会話の Command）
# =/function neofunction:system/adv/tick/quest/40/d1/mira_to_l4

# 内容
data remove storage neofunction:rubra busy
execute as @e[type=villager,tag=rubra_mira] at @s run particle minecraft:dust{color:[1.0,0.35,0.25],scale:1.0} ~ ~1 ~ 0.3 0.6 0.3 0 15 normal
execute in neodimension:ceresta_festa run tp @e[type=villager,tag=rubra_mira] 841.5 13 3266.5 90 0
tellraw @s [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"さらに下へ。四の層「星の台の間」へ","color":"white","bold":true,"italic":false,"underlined":false}]
