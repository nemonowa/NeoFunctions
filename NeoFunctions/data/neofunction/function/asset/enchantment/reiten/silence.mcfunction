# 命名：silence
# 説明：臨界。周りの音を止め、球を 18 tick かけて点まで縮める
# 実行条件：爆心として（#cur に番号）
# >/function neofunction:asset/enchantment/reiten/tick
# =/function neofunction:asset/enchantment/reiten/silence


# 内容
stopsound @a[distance=..160]
function neofunction:asset/enchantment/reiten/orb_size {s:0.4,c:0.3,d:18}
