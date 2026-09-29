# 命名：くるくるトライデント終了
# 説明：敵リスト：サラザール
# >
# =/function neofunction:entity/skill/trident16straightend

# 説明：8方向への向きTPとトライデント射撃を要請そのあとのタグ削除

execute as @e[tag=trident16] at @s run data merge entity @s {NoAI:0b}
execute as @e[tag=trident16] at @s run tag @s remove trident16
