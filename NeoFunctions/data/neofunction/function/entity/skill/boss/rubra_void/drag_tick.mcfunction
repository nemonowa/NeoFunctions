# 命名：drag_tick
# 説明：鎖で下ろされている星（毎 tick、drag を数え下ろす）：388〜341 降りる（24 マス）、340〜49 とどまる（攻撃が通る）、48〜1 鎖を引きちぎって昇る。1 で柱が消える
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/form2
# =/function neofunction:entity/skill/boss/rubra_void/drag_tick

# 内容
execute store result score #rv_drag temp run data get storage neofunction:rubra fin.drag
execute if score #rv_drag temp matches 1.. run scoreboard players remove #rv_drag temp 1
execute store result storage neofunction:rubra fin.drag int 1 run scoreboard players get #rv_drag temp
execute if score #rv_drag temp matches 341.. run tp @s ~ ~-0.5 ~
execute if score #rv_drag temp matches 341.. as @e[type=block_display,tag=rubra_void_part] at @s run tp @s ~ ~-0.5 ~
execute if score #rv_drag temp matches ..48 run tp @s ~ ~0.5 ~
execute if score #rv_drag temp matches ..48 as @e[type=block_display,tag=rubra_void_part] at @s run tp @s ~ ~0.5 ~
execute if score #rv_drag temp matches 49.. as @e[type=marker,tag=rubra_pillar] at @s facing entity @e[type=ghast,tag=rubra_void,limit=1] eyes run particle minecraft:end_rod ^ ^ ^4 0 0 0 0 1 force @a[distance=..128]
execute if score #rv_drag temp matches 49.. as @e[type=marker,tag=rubra_pillar] at @s facing entity @e[type=ghast,tag=rubra_void,limit=1] eyes run particle minecraft:end_rod ^ ^ ^12 0 0 0 0 1 force @a[distance=..128]
execute if score #rv_drag temp matches 49.. as @e[type=marker,tag=rubra_pillar] at @s facing entity @e[type=ghast,tag=rubra_void,limit=1] eyes run particle minecraft:end_rod ^ ^ ^20 0 0 0 0 1 force @a[distance=..128]

execute if score #rv_drag temp matches 48 run playsound minecraft:block.chain.break hostile @a[distance=..128] ~ ~ ~ 4 0.5
execute if score #rv_drag temp matches 48 run tellraw @a[distance=..128] {"text":"星が光の鎖を引きちぎり、また空へ昇っていく……","color":"#FF7B7B","italic":true}
execute if score #rv_drag temp matches 1 run function neofunction:entity/skill/boss/rubra_void/pillars_off
execute if score #rv_drag temp matches 48 run data modify storage neofunction:rubra fin.vul set value 0b
execute if score #rv_drag temp matches 48 run effect give @s minecraft:resistance infinite 4 true
