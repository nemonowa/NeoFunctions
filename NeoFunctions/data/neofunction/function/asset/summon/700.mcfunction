# 命名：フロッグアイス
# 説明：（説明未記載）
# >/function neofunction:entity/.spawn/obj/item/3_item_to_summon
# =/function neofunction:asset/summon/700

summon endermite ~ ~ ~ {Lifetime:1800,Passengers:[{id:"minecraft:ender_pearl",Tags:["upper"]},{id:"minecraft:area_effect_cloud",custom_particle:{type:"minecraft:block",block_state:"minecraft:packed_ice"},Radius:1f,Duration:32767,Tags:["upper"],potion_contents:{custom_effects:[{id:"minecraft:slowness",amplifier:2b,duration:20,show_particles:1b}]}}],CustomName:{"text":"フロッグアイス","bold":true,"italic":false},active_effects:[{id:"minecraft:invisibility",amplifier:126b,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:follow_range",base:32},{id:"minecraft:movement_speed",base:0.4}],Tags:[lv1,],DeathLootTable:"neofunction:asset/summon/700"}