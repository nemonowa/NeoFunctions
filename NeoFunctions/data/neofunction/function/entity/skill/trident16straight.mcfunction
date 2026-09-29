# 命名：くるくるトライデント
# 説明：敵リスト：サラザール
# >
# =/function neofunction:entity/skill/trident16straight

# 説明：8方向への向きTPとトライデント射撃を要請

execute as @e[tag=trident16] at @s run tp @s ~ ~ ~ ~8 ~
execute as @e[tag=trident16] at @s run function neofunction:entity/skill/throw_trident_straight