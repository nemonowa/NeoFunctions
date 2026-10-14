# 命名：shaft_open
# 説明：【追加：2026-10-14 ルブラ編】謎が解けた：四の層の縦穴のバリアブロックの囲いを外す（乗り場からトロッコで下りられるように）
# 実行条件：どこでも
# >/function neofunction:system/adv/tick/quest/40/d1/413
# >/function neofunction:system/rubra/d1/upgrade_20261014
# =/function neofunction:system/rubra/d1/shaft_open

# 内容
execute in neodimension:ceresta_festa run fill 826 13 3262 838 16 3274 minecraft:air replace minecraft:barrier
