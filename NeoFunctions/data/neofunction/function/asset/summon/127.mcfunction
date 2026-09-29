# 命名：ファイヤースペル
# 説明：（説明未記載）
# >/function neofunction:entity/.spawn/obj/item/3_item_to_summon
# =/function neofunction:asset/summon/127

summon endermite ~ ~ ~ {Silent:1b,Lifetime:2000,Passengers:[{id:"minecraft:potion",CustomName:{"text":"スペルコア","bold":true,"italic":false},Item:{id:"minecraft:ender_eye",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:potion_contents":{custom_color:1376279,custom_effects:[{id:"minecraft:instant_damage",amplifier:0b,duration:20}]}}}},{id:"minecraft:area_effect_cloud",custom_particle:{type:"minecraft:enchant"},Radius:1.25f,Duration:99,CustomName:{"text":"スペルコア","bold":true,"italic":false},potion_contents:{custom_effects:[{id:"minecraft:hunger",amplifier:0b,duration:100}]}}],CustomName:{"text":"スペルコア","bold":true,"italic":false},active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1},{id:"minecraft:slow_falling",amplifier:0b,duration:-1}],Tags:[lv2,],DeathLootTable:"neofunction:asset/summon/127"}