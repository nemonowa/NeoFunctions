# 命名：純粋クリーパー
# 説明：（説明未記載）
# >/function neofunction:entity/.spawn/obj/item/3_item_to_summon
# =/function neofunction:asset/summon/432

summon creeper ~ ~ ~ {powered:1b,ExplosionRadius:2b,Passengers:[{id:"minecraft:block_display",Tags:["fly2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.5f,-0.5f],scale:[1f,1f,1f]},block_state:{id:"minecraft:ochre_froglight"}},{id:"minecraft:area_effect_cloud",custom_particle:{type:"minecraft:instant_effect"},Radius:0.01f,Duration:20}],CustomName:{"text":"純粋クリーパー","color":"#30A673","bold":true,"italic":true},active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1}],attributes:[{id:"minecraft:max_health",base:30}],Tags:[lv3,],DeathLootTable:"neofunction:asset/summon/432"}