# 命名：admin
# 説明：レベルアップ時の処理
# >/function neofunction:system/scoreboard/lvl
# =/function neofunction:system/scoreboard/lvl/admin

# 演出
function neofunction:asset/particle/.levelup

# スコアボード処理
function neofunction:player/sp/percentage

# ステータス変動
function neofunction:player/attribute/lvl/1
effect give @s minecraft:instant_health 1 26 true

# 内容
execute if score levelStatsSync temp matches 0 run function neofunction:system/levelstatssync/load
scoreboard players set @s LVL 1
function neofunction:player/sp/percentage
scoreboard players set @s SP 100
# レベル同期(Level Sync)
execute if score levelStatsSync temp matches 0 run function neofunction:system/levelstatssync/on_level_up
