# 命名：104
# 説明：
# >
# =/function neofunction:asset/skill/104


# 内容
tag @s add 104

title @s actionbar {"text":"術式装填 > 104式 裂空斬","color":"light_purple","bold":true,"italic":true}

execute at @a unless block ^ ^ ^5 #neofunction:airs run title @s actionbar {"text":"土の中","bold":true,"italic":true}

effect give @s minecraft:slow_falling 1 0 true

playsound minecraft:entity.player.attack.sweep record @s ~ ~ ~ 2 1.5


execute at @a run summon armor_stand ^ ^ ^-0.1 {Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["downer"],Passengers:[{id:"minecraft:slime",Invulnerable:1b,DeathLootTable:"empty",NoAI:1b,Size:1},{id:"minecraft:slime",Invulnerable:1b,DeathLootTable:"empty",NoAI:1b,Size:1},{id:"minecraft:slime",Invulnerable:1b,DeathLootTable:"empty",NoAI:1b,Size:1},{id:"minecraft:slime",Invulnerable:1b,DeathLootTable:"empty",NoAI:1b,Size:1},{id:"minecraft:slime",Invulnerable:1b,DeathLootTable:"empty",NoAI:1b,Size:1},{id:"minecraft:slime",Invulnerable:1b,DeathLootTable:"empty",NoAI:1b,Size:1},{id:"minecraft:slime",Invulnerable:1b,DeathLootTable:"empty",NoAI:1b,Size:1},{id:"minecraft:slime",Invulnerable:1b,DeathLootTable:"empty",NoAI:1b,Size:1},{id:"minecraft:slime",Invulnerable:1b,DeathLootTable:"empty",NoAI:1b,Size:1},{id:"minecraft:slime",Invulnerable:1b,DeathLootTable:"empty",NoAI:1b,Size:1},{id:"minecraft:slime",Invulnerable:1b,DeathLootTable:"empty",NoAI:1b,Size:1},{id:"minecraft:slime",Invulnerable:1b,DeathLootTable:"empty",NoAI:1b,Size:1},{id:"minecraft:slime",Invulnerable:1b,DeathLootTable:"empty",NoAI:1b,Size:1},{id:"minecraft:slime",Invulnerable:1b,DeathLootTable:"empty",NoAI:1b,Size:1},{id:"minecraft:slime",Invulnerable:1b,DeathLootTable:"empty",NoAI:1b,Size:1},{id:"minecraft:slime",Invulnerable:1b,DeathLootTable:"empty",NoAI:1b,Size:1},{id:"minecraft:slime",Invulnerable:1b,DeathLootTable:"empty",NoAI:1b,Size:1},{id:"minecraft:slime",Invulnerable:1b,DeathLootTable:"empty",NoAI:1b,Size:1},{id:"minecraft:slime",Invulnerable:1b,DeathLootTable:"empty",NoAI:1b,Size:1},{id:"minecraft:slime",Invulnerable:1b,DeathLootTable:"empty",NoAI:1b,Size:1},{id:"minecraft:slime",Invulnerable:1b,DeathLootTable:"empty",NoAI:1b,Size:1},{id:"minecraft:slime",Invulnerable:1b,DeathLootTable:"empty",NoAI:1b,Size:1}]}

tag @s remove 104
