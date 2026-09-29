# 命名：phase3_gun_attack
# 説明：
# >
# =/function neofunction:entity/skill/phase3_gun_attack
execute if score @s timer matches -250 run function core:boss_fights/the_slaughterer/attacks/shit_out_slave/start

execute if score @s timer matches -199 as @e[type=zombie_villager,name="The Slaughterer",limit=1] run function core:boss_fights/the_slaughterer/switch_to_guns

execute if score @s timer matches -170 as @e[type=zombie_villager,name="The Slaughterer"] at @s run playsound music_disc.cock_gun hostile @a ~ ~ ~ 1.65 1

execute if score @s timer matches -180 at @e[type=zombie_villager,name="The Slaughterer",limit=1] run playsound entity.enderman.teleport hostile @a ~ ~ ~ 3 1
execute if score @s timer matches -180 at @e[type=zombie_villager,name="The Slaughterer",limit=1] run particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.01 5
execute if score @s timer matches -180 run tp @e[type=zombie_villager,name="The Slaughterer",limit=1] ~ ~-4 ~

execute if score @s timer matches -160..-100 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run tp @s ~ ~ ~ facing entity @p

execute if score @s timer matches -160 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/crackshot_attack
execute if score @s timer matches -155 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/crackshot_attack
execute if score @s timer matches -150 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/crackshot_attack
execute if score @s timer matches -145 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/crackshot_attack
execute if score @s timer matches -140 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/crackshot_attack
execute if score @s timer matches -135 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/crackshot_attack
execute if score @s timer matches -130 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/crackshot_attack
execute if score @s timer matches -125 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/crackshot_attack
execute if score @s timer matches -120 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/crackshot_attack
execute if score @s timer matches -115 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/crackshot_attack
execute if score @s timer matches -110 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/crackshot_attack
execute if score @s timer matches -105 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/crackshot_attack


execute if score @s timer matches -100 run data merge entity @e[type=zombie_villager,name="The Slaughterer",limit=1] {NoAI:0b}

execute if score @s timer matches -60 run data merge entity @e[type=zombie_villager,name="The Slaughterer",limit=1] {NoAI:1b}


execute if score @s timer matches -60 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run tp @s ~ ~ ~ ~30 0
execute if score @s timer matches -57 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run tp @s ~ ~ ~ ~30 0
execute if score @s timer matches -54 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run tp @s ~ ~ ~ ~30 0
execute if score @s timer matches -51 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run tp @s ~ ~ ~ ~30 0
execute if score @s timer matches -48 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run tp @s ~ ~ ~ ~30 0
execute if score @s timer matches -45 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run tp @s ~ ~ ~ ~30 0
execute if score @s timer matches -42 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run tp @s ~ ~ ~ ~30 0
execute if score @s timer matches -39 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run tp @s ~ ~ ~ ~30 0
execute if score @s timer matches -36 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run tp @s ~ ~ ~ ~30 0
execute if score @s timer matches -33 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run tp @s ~ ~ ~ ~30 0
execute if score @s timer matches -30 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run tp @s ~ ~ ~ ~30 0
execute if score @s timer matches -27 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run tp @s ~ ~ ~ ~30 0
execute if score @s timer matches -24 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run tp @s ~ ~ ~ ~30 0
execute if score @s timer matches -21 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run tp @s ~ ~ ~ ~30 0
execute if score @s timer matches -18 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run tp @s ~ ~ ~ ~30 0
execute if score @s timer matches -15 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run tp @s ~ ~ ~ ~30 0


execute if score @s timer matches -60 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/crackshot_attack_straight
execute if score @s timer matches -57 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/crackshot_attack_straight
execute if score @s timer matches -54 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/crackshot_attack_straight
execute if score @s timer matches -51 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/crackshot_attack_straight
execute if score @s timer matches -48 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/crackshot_attack_straight
execute if score @s timer matches -45 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/crackshot_attack_straight
execute if score @s timer matches -42 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/crackshot_attack_straight
execute if score @s timer matches -39 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/crackshot_attack_straight
execute if score @s timer matches -36 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/crackshot_attack_straight
execute if score @s timer matches -33 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/crackshot_attack_straight
execute if score @s timer matches -30 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/crackshot_attack_straight
execute if score @s timer matches -27 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/crackshot_attack_straight
execute if score @s timer matches -24 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/crackshot_attack_straight
execute if score @s timer matches -21 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/crackshot_attack_straight
execute if score @s timer matches -18 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/crackshot_attack_straight
execute if score @s timer matches -15 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/crackshot_attack_straight

execute if score @s timer matches -5 as @e[type=zombie_villager,name="The Slaughterer",limit=1] at @s run function core:custom_mobs/attacks_generic/vomit_attack_weak

execute if score @s timer matches -5 run data merge entity @e[type=zombie_villager,name="The Slaughterer",limit=1] {Invulnerable:0b,Glowing:0b,NoAI:0b}
execute if score @s timer matches -5 as @e[type=zombie_villager,name="The Slaughterer"] run function core:boss_fights/the_slaughterer/switch_to_sword
execute if score @s timer matches -5 as @e[type=zombie_villager,name="The Slaughterer"] run attribute @s movement_speed base set 0.275