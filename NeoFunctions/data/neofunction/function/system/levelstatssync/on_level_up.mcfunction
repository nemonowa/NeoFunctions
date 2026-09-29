# 命名：on_level_up
# 説明：neofunction:system/levelstatssync/on_level_up
# 説明：@s = レベルアップしたプレイヤー。
# 説明：既存のレベルアップ処理(neofunction:player/attribute/load 等)の
# 説明：最後に「function neofunction:system/levelstatssync/on_level_up」を1行追加して呼び出す想定。
# >
# =/function neofunction:system/levelstatssync/on_level_up

# 現在のlv_maxを退避
scoreboard players operation #prev lv_max = #global lv_max

# lv_max更新(自分の新レベルの方が大きければ上書き)
execute if score @s LVL > #global lv_max run scoreboard players operation #global lv_max = @s LVL

# lv_maxが更新された(=自分が新たな最前線になった) → オンライン全員を再計算
execute unless score #prev lv_max = #global lv_max run execute as @a at @s run function neofunction:system/levelstatssync/per_player

# lv_maxが変わらなかった(自分は最前線ではない) → 自分だけ再計算
execute if score #prev lv_max = #global lv_max at @s run function neofunction:system/levelstatssync/per_player
