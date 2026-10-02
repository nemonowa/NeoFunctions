# 命名：pull_one
# 説明：引き寄せられる 1 体。印を付け、球の方へ 0.8 ブロック進める（先が空気・水・草などのときだけ）
# 実行条件：引き寄せる対象（neo.nk_this の付いた球がある）
# >/function neofunction:asset/enchantment/reiten/pull
# =/function neofunction:asset/enchantment/reiten/pull_one


# 内容
tag @s add neo.nk_pulled
execute at @s facing entity @e[tag=neo.nk_this,limit=1] feet positioned ^ ^ ^0.8 if block ~ ~ ~ #minecraft:replaceable run tp @s ~ ~ ~
