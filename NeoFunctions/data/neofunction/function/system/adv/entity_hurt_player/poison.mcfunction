# 命名：poison
# 説明：entity_hurt_player
# 説明：entity_hurt_playerは実行順の関係でeffect-clearでモブからのデバフを消せない
# >
# =/function neofunction:system/adv/entity_hurt_player/poison


# 内容
effect give @s minecraft:poison 3 3 false

summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"minecraft:block",block_state:"minecraft:air"},Radius:1f,Duration:7,Age:4,CustomName:{"text":"解除用即時付与AEC"},potion_contents:{custom_effects:[{id:"minecraft:levitation",amplifier:1b,duration:0}]}}



