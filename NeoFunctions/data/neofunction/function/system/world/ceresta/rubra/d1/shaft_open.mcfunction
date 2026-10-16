# 命名：shaft_open
# 説明：謎が解けた：四の層の縦穴のバリアブロックの囲いを外す
# 実行条件：どこでも
# >/function neofunction:system/adv/tick/quest/40/d1/413
# >/function neofunction:system/world/ceresta/rubra/d1/upgrade_20261014
# =/function neofunction:system/world/ceresta/rubra/d1/shaft_open

# 内容
execute in neodimension:ceresta_festa run fill 826 13 3262 838 16 3274 minecraft:air replace minecraft:barrier
