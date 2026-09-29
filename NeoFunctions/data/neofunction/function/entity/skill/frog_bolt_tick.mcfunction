# 命名：フロッグボルト
# 説明：
# >/function neofunction:entity/skill/frog_bolt
# =/function neofunction:entity/skill/frog_bolt_tick

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAEakCMAhnDTQAwC0dppKrALDwGz92AJkoB2VgA5+w5gDMAzDxqVKosAQB2dALYJkgMMUABDQ1gYdDLoDOScCgD2hTRCSyCKOC7gY7YAG502IT64AAeSMwEUJEAvrEEVqRohLaIwgTWEJauiFFgcNjYaDDW+iz5GA7ZEPr5aNYAokUlZY0AjoRB2FAAyhae5IhyQWXxALpAA_3
# 円 1
execute as @e[tag=FrogBolt] at @s run particle electric_spark ^0 ^ ^-2 0 0 0 0 1
execute as @e[tag=FrogBolt] at @s run particle electric_spark ^0.61803 ^ ^-1.90211 0 0 0 0 1
execute as @e[tag=FrogBolt] at @s run particle electric_spark ^1.17557 ^ ^-1.61803 0 0 0 0 1
execute as @e[tag=FrogBolt] at @s run particle electric_spark ^1.61803 ^ ^-1.17557 0 0 0 0 1
execute as @e[tag=FrogBolt] at @s run particle electric_spark ^1.90211 ^ ^-0.61803 0 0 0 0 1
execute as @e[tag=FrogBolt] at @s run particle electric_spark ^2 ^ ^0 0 0 0 0 1
execute as @e[tag=FrogBolt] at @s run particle electric_spark ^1.90211 ^ ^0.61803 0 0 0 0 1
execute as @e[tag=FrogBolt] at @s run particle electric_spark ^1.61803 ^ ^1.17557 0 0 0 0 1
execute as @e[tag=FrogBolt] at @s run particle electric_spark ^1.17557 ^ ^1.61803 0 0 0 0 1
execute as @e[tag=FrogBolt] at @s run particle electric_spark ^0.61803 ^ ^1.90211 0 0 0 0 1
execute as @e[tag=FrogBolt] at @s run particle electric_spark ^0 ^ ^2 0 0 0 0 1
execute as @e[tag=FrogBolt] at @s run particle electric_spark ^-0.61803 ^ ^1.90211 0 0 0 0 1
execute as @e[tag=FrogBolt] at @s run particle electric_spark ^-1.17557 ^ ^1.61803 0 0 0 0 1
execute as @e[tag=FrogBolt] at @s run particle electric_spark ^-1.61803 ^ ^1.17557 0 0 0 0 1
execute as @e[tag=FrogBolt] at @s run particle electric_spark ^-1.90211 ^ ^0.61803 0 0 0 0 1
execute as @e[tag=FrogBolt] at @s run particle electric_spark ^-2 ^ ^0 0 0 0 0 1
execute as @e[tag=FrogBolt] at @s run particle electric_spark ^-1.90211 ^ ^-0.61803 0 0 0 0 1
execute as @e[tag=FrogBolt] at @s run particle electric_spark ^-1.61803 ^ ^-1.17557 0 0 0 0 1
execute as @e[tag=FrogBolt] at @s run particle electric_spark ^-1.17557 ^ ^-1.61803 0 0 0 0 1
execute as @e[tag=FrogBolt] at @s run particle electric_spark ^-0.61803 ^ ^-1.90211 0 0 0 0 1
execute as @e[tag=FrogBolt] at @s unless entity @e[type=area_effect_cloud,distance=..0.01] run summon area_effect_cloud ~ ~ ~ {Radius:2f,Duration:20,custom_particle:{type:"minecraft:witch"}}
execute as @e[tag=FrogBolt] store result entity @s data.FrogBolt int 1 run data get entity @s data.FrogBolt 0.9999999
execute as @e[tag=FrogBolt] at @s if data entity @s data{FrogBolt:0} run function neofunction:entity/skill/frog_bolt_attack

execute if entity @e[tag=FrogBolt] run schedule function neofunction:entity/skill/frog_bolt_tick 1t