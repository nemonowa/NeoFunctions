# 命名：くるくるトライデント
# 説明：敵リスト：サラザール
# >
# =/function neofunction:entity/skill/trident8straight

# 説明：8方向への向きTPとトライデント射撃を要請

execute as @e[tag=trident8] at @s run tp @s ~ ~ ~ ~45 ~
execute as @e[tag=trident8] at @s run function neofunction:entity/skill/throw_trident_straight