# 命名：loop
# 説明：重力井戸（試作）。井戸があるあいだだけ毎 tick 動く
# 実行条件：井戸がある
# >/function admin:test/enchant/well/spawn
# =/function admin:test/enchant/well/loop


# 内容
execute as @e[type=marker,tag=neo.well] at @s run function admin:test/enchant/well/pull
execute if entity @e[type=marker,tag=neo.well] run schedule function admin:test/enchant/well/loop 1t replace
