# 命名：for_check
# 説明：（説明未記載）
# >
# =/function admin:block_to_display/for_check
 # for_check.mcfunction
 # 
 #
 # Created by .
##
$execute if block ~ ~ ~ $(i) run data modify entity @e[tag=BTDThis,limit=1] block_state.Name set value "$(i)"
