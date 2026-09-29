# 命名：prediction
# 説明：
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/.neo
# =/function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/prediction



# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAEwCMAZgBwCGpADNQLQDMALCnO9wCcQ9gCMUo+u0aDSAdkYA2FihZtqYAgDtGAWwTJAYYoACDQRiMMegM5JwKAPaEtEJJRYE+LuBjtgAbozYhAbgAB5IHmBQkQC+sQRWpGiEtoicAHQArATWEJauiFFw2NhoMNYG1GqJDvkQBlFo1gCipeWVLQCOhEHYUADKFnzkiLRBlfEAukA_3
# 円 1
particle electric_spark ^0 ^ ^-3.5 0 0 0 0 1
particle electric_spark ^1.08156 ^ ^-3.3287 0 0 0 0 1
particle electric_spark ^2.05725 ^ ^-2.83156 0 0 0 0 1
particle electric_spark ^2.83156 ^ ^-2.05725 0 0 0 0 1
particle electric_spark ^3.3287 ^ ^-1.08156 0 0 0 0 1
particle electric_spark ^3.5 ^ ^0 0 0 0 0 1
particle electric_spark ^3.3287 ^ ^1.08156 0 0 0 0 1
particle electric_spark ^2.83156 ^ ^2.05725 0 0 0 0 1
particle electric_spark ^2.05725 ^ ^2.83156 0 0 0 0 1
particle electric_spark ^1.08156 ^ ^3.3287 0 0 0 0 1
particle electric_spark ^0 ^ ^3.5 0 0 0 0 1
particle electric_spark ^-1.08156 ^ ^3.3287 0 0 0 0 1
particle electric_spark ^-2.05725 ^ ^2.83156 0 0 0 0 1
particle electric_spark ^-2.83156 ^ ^2.05725 0 0 0 0 1
particle electric_spark ^-3.3287 ^ ^1.08156 0 0 0 0 1
particle electric_spark ^-3.5 ^ ^0 0 0 0 0 1
particle electric_spark ^-3.3287 ^ ^-1.08156 0 0 0 0 1
particle electric_spark ^-2.83156 ^ ^-2.05725 0 0 0 0 1
particle electric_spark ^-2.05725 ^ ^-2.83156 0 0 0 0 1
particle electric_spark ^-1.08156 ^ ^-3.3287 0 0 0 0 1

execute unless entity @e[type=area_effect_cloud,distance=..0.01] run summon area_effect_cloud ~ ~ ~ {Radius:3.5f,Duration:20,custom_particle:{type:"minecraft:witch"}}