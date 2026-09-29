# 命名：check_macro
# 説明：（説明未記載）
# >
# =/function admin:block_to_display/state/check_macro
 # check_macro.mcfunction
 # 
 #
 # Created by .
##

$execute if block ~ ~ ~ $(Block)[$(Property)=$(i)] run data modify entity @e[tag=BTDThis,limit=1] block_state.Properties.$(Property) set value "$(i)"
