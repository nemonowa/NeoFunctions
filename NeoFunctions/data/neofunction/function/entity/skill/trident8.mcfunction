# 命名：くるくるトライデント
# 説明：敵リスト：サラザール
# >
# =/function neofunction:entity/skill/trident8

# 説明：8方向への向きTPとトライデント射撃を要請

tag @s add trident8

schedule function neofunction:entity/skill/trident8straight 3t append
schedule function neofunction:entity/skill/trident8straight 6t append
schedule function neofunction:entity/skill/trident8straight 9t append
schedule function neofunction:entity/skill/trident8straight 12t append
schedule function neofunction:entity/skill/trident8straight 15t append
schedule function neofunction:entity/skill/trident8straight 18t append
schedule function neofunction:entity/skill/trident8straight 21t append
schedule function neofunction:entity/skill/trident8straight 24t append

schedule function neofunction:entity/skill/trident8straight_end 27t

