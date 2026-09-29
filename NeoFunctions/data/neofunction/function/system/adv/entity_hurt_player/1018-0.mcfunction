# 命名：1018-0
# 説明：
# >/advancement neofunction:entity_hurt_player/1018
# =/function neofunction:system/adv/entity_hurt_player/1018-0

execute store result score wheatcount temp run clear @s wheat[minecraft:custom_model_data={floats:[1422.0f]}] 0
execute if score wheatcount temp matches ..11 run return 0

clear @s wheat[minecraft:custom_model_data={floats:[1422.0f]}] 10

function neofunction:system/adv/entity_hurt_player/1018-1
function neofunction:system/adv/entity_hurt_player/1018-1
function neofunction:system/adv/entity_hurt_player/1018-1
function neofunction:system/adv/entity_hurt_player/1018-1
function neofunction:system/adv/entity_hurt_player/1018-1
function neofunction:system/adv/entity_hurt_player/1018-1
function neofunction:system/adv/entity_hurt_player/1018-1
function neofunction:system/adv/entity_hurt_player/1018-1
function neofunction:system/adv/entity_hurt_player/1018-1
function neofunction:system/adv/entity_hurt_player/1018-1

#効果音とか
playsound block.crop.break record @s ~ ~ ~ 1.6 0.5
particle block{block_state:{id:"minecraft:wheat",properties:{"age":"7"}}} ~ ~ ~ 0 0 0 1 100