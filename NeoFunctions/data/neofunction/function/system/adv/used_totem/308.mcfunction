# 命名：308
# 説明：進捗達成時
# >/function neofunction:consume_item/308
# =/function neofunction:system/adv/used_totem/308


# 死亡時、小麦を吹き出す
title @a actionbar {"text":"🔯セットスペル発動【うまもり】","color":"light_purple","bold":true,"italic":false}
summon item ~ ~ ~ {Glowing:1b,PickupDelay:80,Motion:[0.0,0.0,0.0],Item:{id:"minecraft:wheat",count:1,components:{"minecraft:enchantments":{"minecraft:protection":1},"minecraft:tooltip_display":{hidden_components:["minecraft:enchantments"]}}}}
summon item ~ ~ ~ {Glowing:1b,PickupDelay:80,Motion:[0.0,0.0,0.0],Item:{id:"minecraft:wheat",count:1,components:{"minecraft:enchantments":{"minecraft:protection":1},"minecraft:tooltip_display":{hidden_components:["minecraft:enchantments"]}}}}
summon item ~ ~ ~ {Glowing:1b,PickupDelay:80,Motion:[0.0,0.0,0.0],Item:{id:"minecraft:wheat",count:1,components:{"minecraft:enchantments":{"minecraft:protection":1},"minecraft:tooltip_display":{hidden_components:["minecraft:enchantments"]}}}}
summon item ~ ~ ~ {Glowing:1b,PickupDelay:80,Motion:[0.0,0.0,0.0],Item:{id:"minecraft:wheat",count:1,components:{"minecraft:enchantments":{"minecraft:protection":1},"minecraft:tooltip_display":{hidden_components:["minecraft:enchantments"]}}}}
summon item ~ ~ ~ {Glowing:1b,PickupDelay:80,Motion:[0.0,0.5,0.0],Item:{id:"minecraft:wheat",count:1,components:{"minecraft:enchantments":{"minecraft:protection":1},"minecraft:tooltip_display":{hidden_components:["minecraft:enchantments"]}}}}
summon item ~ ~ ~ {Glowing:1b,PickupDelay:80,Motion:[0.01,0.5,0.0],Item:{id:"minecraft:wheat",count:1,components:{"minecraft:enchantments":{"minecraft:protection":1},"minecraft:tooltip_display":{hidden_components:["minecraft:enchantments"]}}}}
summon item ~ ~ ~ {Glowing:1b,PickupDelay:80,Motion:[0.0,0.5,0.01],Item:{id:"minecraft:wheat",count:1,components:{"minecraft:enchantments":{"minecraft:protection":1},"minecraft:tooltip_display":{hidden_components:["minecraft:enchantments"]}}}}
summon item ~ ~ ~ {Glowing:1b,PickupDelay:80,Motion:[0.01,0.5,0.01],Item:{id:"minecraft:wheat",count:1,components:{"minecraft:enchantments":{"minecraft:protection":1},"minecraft:tooltip_display":{hidden_components:["minecraft:enchantments"]}}}}

#
schedule function neofunction:asset/effect/clear-totem 1t append

# oto
playsound minecraft:entity.horse.ambient record @s ~ ~ ~ 1 1 1
playsound minecraft:entity.horse.angry record @s ~ ~ ~ 1 1 1
playsound minecraft:entity.horse.breathe record @s ~ ~ ~ 1 1 1
playsound minecraft:entity.horse.eat record @s ~ ~ ~ 1 1 1
playsound minecraft:entity.horse.hurt record @s ~ ~ ~ 1 1 1
playsound minecraft:entity.horse.death record @s ~ ~ ~ 1 1 1
playsound minecraft:entity.horse.gallop record @s ~ ~ ~ 1 1 1


