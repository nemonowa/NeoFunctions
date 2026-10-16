# 命名：reset_2
# 説明：終章を完全にやり直す：ボス・目印・舞台・星の子・滴り・セレンの姿・赤い星を消し、ミラ（いなければ呼び直す）とオルドを水守の館へ、人のタグと記録を消し、目印を置き直して、進み具合を 439 に
# 実行条件：schedule
# >/function neofunction:system/world/ceresta/rubra/fin/reset
# =/function neofunction:system/world/ceresta/rubra/fin/reset_2

# 内容
execute in neodimension:ceresta_festa run kill @e[type=ghast,tag=rubra_void]
execute in neodimension:ceresta_festa run kill @e[type=marker,tag=rubra_void_ctl]
execute in neodimension:ceresta_festa run function neofunction:entity/skill/boss/rubra_void/clean
execute in neodimension:ceresta_festa run kill @e[type=allay,tag=rubra_child]
# 昇る灯籠の片付け
schedule clear neofunction:system/world/ceresta/rubra/fin/skylantern_tick
data remove storage neofunction:rubra skyl
execute in neodimension:ceresta_festa run kill @e[type=item_display,tag=rubra_skyl]
execute in neodimension:ceresta_festa as @e[type=zombie,tag=rubra_fin_drip] run tag @s add del
execute in neodimension:ceresta_festa run kill @e[type=mannequin,tag=rubra_fin_selenv]
execute in neodimension:ceresta_festa run kill @e[type=block_display,tag=rubra_redstar]
function neofunction:system/world/ceresta/rubra/fin/reward/clear
execute in neodimension:ceresta_festa run kill @e[tag=rubra_sky_selen]
function neofunction:system/world/ceresta/rubra/fin/arena/clear
function neofunction:entity/skill/boss/rubra_void/day
# ミラとオルドを水守の館へ（いなければ呼び直す）
execute in neodimension:ceresta_festa unless entity @e[type=villager,tag=rubra_mira] positioned 948.5 44 3271.5 run function neofunction:asset/summon/902
execute in neodimension:ceresta_festa run tp @e[type=villager,tag=rubra_mira] 948.5 44 3271.5
execute in neodimension:ceresta_festa unless entity @e[type=villager,tag=rubra_ordo] positioned 959.5 44 3271.5 run function neofunction:asset/summon/904
execute in neodimension:ceresta_festa run tp @e[type=villager,tag=rubra_ordo] 959.5 44 3271.5 90 0
# 人のタグと記録
tag @a remove rubra_relic
tag @a remove rubra_replica
tag @a remove rubra_sh1
tag @a remove rubra_sh2
tag @a remove rubra_sh3
tag @a remove rubra_sh4
tag @a remove rubra_ringhit
tag @a remove rubra_nova_ready
tag @a remove rubra_tosky
tag @a remove rubra_sky_in
data remove storage neofunction:rubra choice.final
data remove storage neofunction:rubra ending
data remove storage neofunction:rubra busy
data modify storage neofunction:rubra fin set value {state:"none",retry:0b}
execute in neodimension:ceresta_festa run forceload remove 900 3255 965 3315
# 目印を置き直す
function neofunction:system/world/ceresta/rubra/fin/setup
scoreboard players set #temp main_story 439
tellraw @a[gamemode=creative] {"text":"終章をやり直せる状態にしました（進み具合 439）。水守の館のミラに話しかけると始まります","color":"gray"}
