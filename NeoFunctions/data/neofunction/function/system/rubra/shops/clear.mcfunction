# 命名：clear
# 説明：店の人（ドルガ・ザイド・サリム・ナディラ・ハミド）と、店の展示・看板（タグ rubra_shopdeco）・星鍛冶の金床の右クリックの所を片付ける（ブロックはそのまま）
# 実行条件：セレスタ次元
# >/function neofunction:system/rubra/shops/build
# =/function neofunction:system/rubra/shops/clear

# 内容
tag @e[type=villager,tag=rubra_shop] add del
kill @e[tag=rubra_shopdeco]
kill @e[tag=rubra_forge_part]
