# 命名：リバイバルポッド
# 説明：（説明未記載）
# >/function neofunction:entity/.spawn/obj/item/3_item_to_summon
# =/function neofunction:asset/summon/411

summon armor_stand ~ ~ ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["RevPod"],Passengers:[{id:"minecraft:area_effect_cloud",custom_particle:{type:"minecraft:dust_plume"},Radius:0.1f,Duration:80,CustomName:{"text":"❤"},potion_contents:{custom_effects:[{id:"minecraft:regeneration",amplifier:3b,duration:80}]}}],CustomName:{"text":"リバイバルポッド"},Tags:[st,RevPod],DeathLootTable:"neofunction:asset/summon/411"}