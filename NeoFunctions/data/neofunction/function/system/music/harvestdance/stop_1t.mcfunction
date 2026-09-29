# 命名：stop_1t
# 説明：音楽のフェードアウト＆次の曲準備
# >/function neofunction:system/music/harvestdance/stop
# =/function neofunction:system/music/harvestdance/stop_1t

scoreboard players remove @a[tag=MusicStop,tag=MusicHarvestdance] MusicStop 1
stopsound @a[tag=MusicStop,tag=MusicHarvestdance,scores={MusicStop=0}] record minecraft:neo/asset/mozell/harvestdance/1
stopsound @a[tag=MusicStop,tag=MusicHarvestdance,scores={MusicStop=..4}] record minecraft:neo/asset/mozell/harvestdance/2
stopsound @a[tag=MusicStop,tag=MusicHarvestdance,scores={MusicStop=..8}] record minecraft:neo/asset/mozell/harvestdance/3
stopsound @a[tag=MusicStop,tag=MusicHarvestdance,scores={MusicStop=..12}] record minecraft:neo/asset/mozell/harvestdance/4
stopsound @a[tag=MusicStop,tag=MusicHarvestdance,scores={MusicStop=..16}] record minecraft:neo/asset/mozell/harvestdance/5
stopsound @a[tag=MusicStop,tag=MusicHarvestdance,scores={MusicStop=..20}] record minecraft:neo/asset/mozell/harvestdance/6
stopsound @a[tag=MusicStop,tag=MusicHarvestdance,scores={MusicStop=..24}] record minecraft:neo/asset/mozell/harvestdance/7
stopsound @a[tag=MusicStop,tag=MusicHarvestdance,scores={MusicStop=..28}] record minecraft:neo/asset/mozell/harvestdance/8
stopsound @a[tag=MusicStop,tag=MusicHarvestdance,scores={MusicStop=..32}] record minecraft:neo/asset/mozell/harvestdance/9
stopsound @a[tag=MusicStop,tag=MusicHarvestdance,scores={MusicStop=..36}] record minecraft:neo/asset/mozell/harvestdance/10

execute as @a[tag=MusicStop,tag=MusicHarvestdance,scores={MusicStop=0},tag=!MusicChange] run function neofunction:system/music/harvestdance/finish
execute as @a[tag=MusicStop,tag=MusicHarvestdance,scores={MusicStop=-8},tag=MusicChange] run function neofunction:system/music/harvestdance/change

execute if entity @a[tag=MusicStop,tag=MusicHarvestdance] run schedule function neofunction:system/music/harvestdance/stop_1t 1t replace
