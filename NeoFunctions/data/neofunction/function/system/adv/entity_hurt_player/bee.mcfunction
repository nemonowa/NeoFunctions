# 命名：bee
# 説明：entity_hurt_player
# 説明：蜂から攻撃を受けたとき
# 説明：entity_hurt_playerは実行順の関係でeffect-clearでモブからのデバフを消せない
# >
# =/function neofunction:system/adv/entity_hurt_player/bee


# 内容：蜂から毒を受けたとき消す
# execute at @s if entity @e[distance=..8,tag=lv0] run effect clear @s poison

summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"minecraft:block",block_state:"minecraft:air"},Radius:1f,Duration:7,Age:4,CustomName:{"text":"解除用即時付与AEC"},potion_contents:{custom_effects:[{id:"minecraft:poison",amplifier:1b,duration:0}]}}




