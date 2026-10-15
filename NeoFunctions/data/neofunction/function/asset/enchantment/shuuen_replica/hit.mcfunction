# 命名：hit
# 説明：星葬弓「終焉」の写しの矢が当たった（ブロックか生き物）：その場で小さな星の欠片が弾ける（半径 6、blast）
# 実行条件：矢（ブロックに当たったとき）か、当たった生き物（エンチャントの hit_block・post_attack から）。実行位置 当たった所
# >/enchantment neofunction:shuuen_replica
# =/function neofunction:asset/enchantment/shuuen_replica/hit

# 内容
execute if entity @s[type=#minecraft:arrows] run tag @s add neo.rp_done
function neofunction:asset/enchantment/shuuen_replica/blast
execute if entity @s[type=#minecraft:arrows] run kill @s
