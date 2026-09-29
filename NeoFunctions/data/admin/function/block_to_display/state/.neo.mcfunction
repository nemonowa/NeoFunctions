# 命名：.neo
# 説明：（説明未記載）
# >
# =/function admin:block_to_display/state/.neo
 # .neo.mcfunction
 # 
 #
 # Created by .
##

# $(i)としてproperty名をもらう

$data modify storage admin:btd Check.Property set value "$(i)"
data modify storage admin:btd Check.Block set from entity @e[tag=BTDThis,limit=1] block_state.Name
$data modify storage admin:btd Check.List set from storage admin:btd Check.States.$(i)
data modify storage admin:btd Check.Function set value "admin:block_to_display/state/check"
function neofunction:asset/nbt/for with storage admin:btd Check
