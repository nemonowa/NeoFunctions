# 命名：5s
# 説明：tutorial
# >/function neofunction:asset/event/tutorial
# =/function neofunction:asset/event/froggame/init


# 内容
execute in neodimension:ceresta_festa positioned 1012.35 44.51 2157.00 run tag @e[tag=enemy,distance=..32] add del
execute in neodimension:ceresta_festa positioned 1012.35 44.51 2157.00 run tp @e[type=item,distance=..32] @p
scoreboard players set froggame temp 0