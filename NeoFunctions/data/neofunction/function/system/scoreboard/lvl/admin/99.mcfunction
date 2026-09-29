# 命名：99
# 説明：レベルアップ時の処理
# >/function neofunction:system/scoreboard/lvl
# =/function neofunction:system/scoreboard/lvl/admin/99


# 内容
execute if score levelStatsSync temp matches 0 run function neofunction:system/levelstatssync/load
scoreboard players set @s LVL 99
effect give @s minecraft:instant_health 1 26 true
function neofunction:player/sp/percentage

# 演出
function neofunction:asset/particle/.levelup

# ステータス変動
function neofunction:player/attribute/lvl/99
# レベル同期(Level Sync)
execute if score levelStatsSync temp matches 0 run function neofunction:system/levelstatssync/on_level_up
