# 命名：フロッグポイズン
# 説明：（説明未記載）
# >/function neofunction:entity/.spawn/obj/item/3_item_to_summon
# =/function neofunction:asset/summon/701

summon endermite ~ ~ ~ {Lifetime:1800,Passengers:[{id:"minecraft:ender_pearl",Tags:["upper"]},{id:"minecraft:area_effect_cloud",custom_particle:{type:"minecraft:block",block_state:"minecraft:seagrass"},Radius:1f,Duration:32767,Tags:["upper"],potion_contents:{custom_effects:[{id:"minecraft:poison",amplifier:1b,duration:20}]}}],CustomName:{"text":"フロッグポイズン","bold":true,"italic":false},active_effects:[{id:"minecraft:invisibility",amplifier:126b,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:follow_range",base:32},{id:"minecraft:movement_speed",base:0.4}],Tags:[lv1,],DeathLootTable:"neofunction:asset/summon/701"}