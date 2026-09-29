# 命名：50
# 説明：レベルアップ時の処理
# >/function neofunction:system/scoreboard/lvl
# =/function neofunction:system/scoreboard/lvl/50


# 内容
execute if score levelStatsSync temp matches 0 run function neofunction:system/levelstatssync/load
scoreboard players set @s LVL 50
effect give @s minecraft:instant_health 1 26 true

# 基本採掘速度1上昇
scoreboard players add @s MiningSpeed 1

function neofunction:player/sp/percentage

#職業スキルを覚える（各職業の該当レベルのみ内部で発火）
function neofunction:system/scoreboard/lvl/skillgrant/knight
function neofunction:system/scoreboard/lvl/skillgrant/aria
function neofunction:system/scoreboard/lvl/skillgrant/tamer
function neofunction:system/scoreboard/lvl/skillgrant/assassin
function neofunction:system/scoreboard/lvl/skillgrant/doctor
function neofunction:system/scoreboard/lvl/skillgrant/common
function neofunction:system/scoreboard/lvl/skillscale/knight
function neofunction:system/scoreboard/lvl/skillscale/aria
function neofunction:system/scoreboard/lvl/skillscale/tamer
function neofunction:system/scoreboard/lvl/skillscale/assassin
function neofunction:system/scoreboard/lvl/skillscale/doctor
function neofunction:system/scoreboard/lvl/skillscale/common

# 演出
function neofunction:asset/particle/.levelup

# ステータス変動
function neofunction:player/attribute/lvl/50
# レベル同期(Level Sync)
execute if score levelStatsSync temp matches 0 run function neofunction:system/levelstatssync/on_level_up
