# 命名：for_check_state
# 説明：（説明未記載）
# >
# =/function admin:block_to_display/for_check_state
 # for_check_state.mcfunction
 # 
 #
 # Created by .
##

$execute if block ~ ~ ~ $(i) run data modify entity @e[tag=BTDThis,limit=1] block_state.Name set value "$(i)"
$execute if block ~ ~ ~ $(i) run data modify storage admin:btd Check.List set from storage admin:btd State.$(i)
$execute if block ~ ~ ~ $(i) run data modify storage admin:btd Check.States set from storage admin:btd States.$(i)
$execute if block ~ ~ ~ $(i) run data modify storage admin:btd Check.Function set value "admin:block_to_display/state/.neo"
$execute if block ~ ~ ~ $(i) run function neofunction:asset/nbt/for with storage admin:btd Check

