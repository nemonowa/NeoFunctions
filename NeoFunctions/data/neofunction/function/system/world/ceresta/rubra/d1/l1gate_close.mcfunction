# 命名：l1gate_close
# 説明：一の層の鉄格子（x859、z3263〜3265、y44〜47）を閉じ、北の詰所のレバーを下げる
# 実行条件：セレスタ次元
# >/function neofunction:system/world/ceresta/rubra/d1/setup_in
# =/function neofunction:system/world/ceresta/rubra/d1/l1gate_close

# 内容
fill 859 44 3263 859 47 3265 minecraft:iron_bars[north=true,south=true]
setblock 860 45 3244 minecraft:lever[face=wall,facing=south,powered=false]
data modify storage neofunction:rubra d1.l1gate set value 0b
