# 命名：woods
# 説明：（説明未記載）
# >
# =/function admin:block_to_display/make_list/woods
 # woods.mcfunction
 # 
 #
 # Created by .
##

$data modify storage admin:btd StateList append value "$(i)_button"
$data modify storage admin:btd State.$(i)_button set value ["face","facing"]
$data modify storage admin:btd States.$(i)_button set value {facing:["east","west","south","north"],face:["floor","wall","ceiling"]}

$data modify storage admin:btd StateList append value "$(i)_door"
$data modify storage admin:btd State.$(i)_door set value ["facing","half","hinge","open"]
$data modify storage admin:btd States.$(i)_door set value {facing:["east","west","south","north"],half:["lower","upper"],hinge:["right","left"],open:["true","false"]}

$data modify storage admin:btd StateList append value "$(i)_fence"
$data modify storage admin:btd State.$(i)_fence set value ["east","north","south","west"]
$data modify storage admin:btd States.$(i)_fence set value {east:["true","false"],north:["true","false"],south:["true","false"],west:["true","false"]}

$data modify storage admin:btd StateList append value "$(i)_fence_gate"
$data modify storage admin:btd State.$(i)_fence_gate set value ["facing","in_wall","open"]
$data modify storage admin:btd States.$(i)_fence_gate set value {facing:["east","west","north","south"],in_wall:["true","false"],open:["true","false"]}

$data modify storage admin:btd NormalList append value "$(i)_leaves"

$data modify storage admin:btd StateList append value "$(i)_log"
$data modify storage admin:btd State.$(i)_log set value ["axis"]
$data modify storage admin:btd States.$(i)_log set value {axis:["x","y","z"]}

$data modify storage admin:btd NormalList append value "$(i)_planks"

$data modify storage admin:btd StateList append value "$(i)_pressure_plate"
$data modify storage admin:btd State.$(i)_pressure_plate set value ["powered"]
$data modify storage admin:btd States.$(i)_pressure_plate set value {powered:["true","false"]}

$data modify storage admin:btd NormalList append value "$(i)_sapling"

$data modify storage admin:btd StateList append value "$(i)_slab"
$data modify storage admin:btd State.$(i)_slab set value ["type"]
$data modify storage admin:btd States.$(i)_slab set value {type:["bottom","top","double"]}

$data modify storage admin:btd StateList append value "$(i)_stairs"
$data modify storage admin:btd State.$(i)_stairs set value ["facing","half","shape"]
$data modify storage admin:btd States.$(i)_stairs set value {facing:["east","west","south","north"],half:["top","bottom"],shape:["straight","inner_left","inner_right","outer_left","outer_right"]}

$data modify storage admin:btd StateList append value "$(i)_trapdoor"
$data modify storage admin:btd State.$(i)_trapdoor set value ["facing","half","open"]
$data modify storage admin:btd States.$(i)_trapdoor set value {facing:["east","west","south","north"],half:["top","bottom"],open:["true","false"]}

$data modify storage admin:btd StateList append value "$(i)_wood"
$data modify storage admin:btd State.$(i)_wood set value ["axis"]
$data modify storage admin:btd States.$(i)_wood set value {axis:["x","y","z"]}
