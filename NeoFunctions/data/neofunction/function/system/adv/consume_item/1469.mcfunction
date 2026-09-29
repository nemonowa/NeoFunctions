# 命名：1469
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:consume_item/1469
# =/function neofunction:system/adv/consume_item/1469

## 内容
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"minecraft:block",block_state:"minecraft:air"},Radius:1f,Duration:7,Age:4,CustomName:{"text":"解除用即時付与AEC"},potion_contents:{custom_effects:[{id:"minecraft:poison",amplifier:1b,duration:0}]}}
effect give @s minecraft:dolphins_grace 60 0
effect give @s minecraft:resistance 60 0