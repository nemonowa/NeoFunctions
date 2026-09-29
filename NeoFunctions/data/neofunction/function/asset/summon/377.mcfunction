# 命名：爆炎焼破
# 説明：（説明未記載）
# >/function neofunction:entity/.spawn/obj/item/3_item_to_summon
# =/function neofunction:asset/summon/377

summon creeper ~ ~ ~ {HasVisualFire:1b,OnGround:0b,NoGravity:1b,Silent:1b,Health:200f,powered:1b,ExplosionRadius:3b,CustomName:{"text":"爆炎焼破","color":"red","bold":true,"italic":true,"underlined":true},active_effects:[{id:"minecraft:jump_boost",amplifier:2b,duration:-1},{id:"minecraft:fire_resistance",amplifier:1b,duration:-1},{id:"minecraft:invisibility",amplifier:1b,duration:-1}],attributes:[{id:"minecraft:max_health",base:200},{id:"minecraft:armor",base:10}],Tags:[lv3,],DeathLootTable:"neofunction:asset/summon/377",equipment:{mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{"minecraft:flame":20,"minecraft:infinity":1,"minecraft:power":15,"minecraft:punch":5,"minecraft:unbreaking":5}}},head:{id:"minecraft:magma_block",count:1}}}