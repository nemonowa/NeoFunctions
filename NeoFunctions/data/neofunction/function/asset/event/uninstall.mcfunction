# 命名：uninstall
# 説明：作成したスコアボードなどを削除
# 説明：手動呼び出し
# >
# =/function neofunction:asset/event/uninstall


#
function neofunction:system/clock/all_clock_stop

function neofunction:asset/team/remove_all
function neofunction:asset/scoreboard/remove_all
function neofunction:asset/forceload/remove_all
function neofunction:asset/datapack/disable_all

tag @e remove check


tellraw @s ["",{"text":"[byebye-reserch] ","color":"gold","bold":true},{"text":"Data pack ","color":"yellow"},{"text":"neofunction","color":"gold","underlined":true},{"text":" uninstalled successfully. You may now remove it from your data pack folder.","color":"yellow"}]
