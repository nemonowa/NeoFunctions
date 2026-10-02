# 命名：start
# 説明：天墜の開始。見ている先（最大 64 ブロック）を調べて爆心を決める
# 実行条件：神槍「天墜」でしゃがんで突いたプレイヤー（エンチャントの run_function から）
# >/enchantment neofunction:tentsui
# =/function neofunction:asset/enchantment/tentsui/start


# 内容
function neofunction:asset/enchantment/core/init
execute if score @s neo.nk_st matches 1000.. run return fail
execute unless score @s neo.nk_id matches 1.. store result score @s neo.nk_id run scoreboard players add #nk_next temp 1
scoreboard players set @s neo.nk_st 1000
scoreboard players set #nk_ray temp 0
execute at @s anchored eyes positioned ^ ^ ^ run function neofunction:asset/enchantment/tentsui/ray
