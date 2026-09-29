# 命名：mark_apply
# 説明：実行者(@s＝呪印を受ける対象)に呪印(marked)を付与する共通処理。
# 説明：スタックはせず「ある／なし」のみ。10秒(200t)後に自動で消える
# 説明：（254・259で消費されればその時点で即消える）
# >execute as <対象エンティティ> run function neofunction:asset/skill/mark_apply
# =/function neofunction:player/job/assasin/mark_apply

tag @s add marked

# 演出
particle minecraft:witch ~ ~1 ~ 0.2 0.2 0.2 0.01 5 normal

# 10秒後に自動で消える（再付与されるとタイマーが延長される）
schedule function neofunction:asset/skill/mark_clear 200t replace
