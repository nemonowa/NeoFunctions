# 命名：shaft_close
# 説明：【追加：2026-10-14 ルブラ編】四の層の縦穴を、謎を解くまでバリアブロックで囲う（まわりの低い壁 x826・x838・z3262・z3274 の上 y14〜16 と、南東の乗り場の口 x837〜838・z3273〜3274）。壁を跳び越えて縦穴に落ちないように
# 実行条件：どこでも
# >/function neofunction:system/rubra/d1/setup_in
# >/function neofunction:system/rubra/d1/upgrade_20261014
# =/function neofunction:system/rubra/d1/shaft_close

# 内容
execute in neodimension:ceresta_festa run fill 826 14 3262 838 16 3262 minecraft:barrier replace minecraft:air
execute in neodimension:ceresta_festa run fill 826 14 3274 838 16 3274 minecraft:barrier replace minecraft:air
execute in neodimension:ceresta_festa run fill 826 14 3262 826 16 3274 minecraft:barrier replace minecraft:air
execute in neodimension:ceresta_festa run fill 838 14 3262 838 16 3274 minecraft:barrier replace minecraft:air
execute in neodimension:ceresta_festa run fill 837 13 3273 838 16 3274 minecraft:barrier replace minecraft:air
