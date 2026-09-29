# 命名：stop_1t
# 説明：音楽のフェードアウト＆次の曲準備
# >/function neofunction:system/music/deep_woods4/stop
# =/function neofunction:system/music/deep_woods4/stop_1t

scoreboard players remove @a[tag=MusicStop,tag=MusicDeepWoods4] MusicStop 1
stopsound @a[tag=MusicStop,tag=MusicDeepWoods4,scores={MusicStop=0}] record minecraft:neo/asset/peritune/deep_woods4/1
stopsound @a[tag=MusicStop,tag=MusicDeepWoods4,scores={MusicStop=..4}] record minecraft:neo/asset/peritune/deep_woods4/2
stopsound @a[tag=MusicStop,tag=MusicDeepWoods4,scores={MusicStop=..8}] record minecraft:neo/asset/peritune/deep_woods4/3
stopsound @a[tag=MusicStop,tag=MusicDeepWoods4,scores={MusicStop=..12}] record minecraft:neo/asset/peritune/deep_woods4/4
stopsound @a[tag=MusicStop,tag=MusicDeepWoods4,scores={MusicStop=..16}] record minecraft:neo/asset/peritune/deep_woods4/5
stopsound @a[tag=MusicStop,tag=MusicDeepWoods4,scores={MusicStop=..20}] record minecraft:neo/asset/peritune/deep_woods4/6
stopsound @a[tag=MusicStop,tag=MusicDeepWoods4,scores={MusicStop=..24}] record minecraft:neo/asset/peritune/deep_woods4/7
stopsound @a[tag=MusicStop,tag=MusicDeepWoods4,scores={MusicStop=..28}] record minecraft:neo/asset/peritune/deep_woods4/8
stopsound @a[tag=MusicStop,tag=MusicDeepWoods4,scores={MusicStop=..32}] record minecraft:neo/asset/peritune/deep_woods4/9
stopsound @a[tag=MusicStop,tag=MusicDeepWoods4,scores={MusicStop=..36}] record minecraft:neo/asset/peritune/deep_woods4/10

execute as @a[tag=MusicStop,tag=MusicDeepWoods4,scores={MusicStop=0},tag=!MusicChange] run function neofunction:system/music/deep_woods4/finish
execute as @a[tag=MusicStop,tag=MusicDeepWoods4,scores={MusicStop=-8},tag=MusicChange] run function neofunction:system/music/deep_woods4/change

execute if entity @a[tag=MusicStop,tag=MusicDeepWoods4] run schedule function neofunction:system/music/deep_woods4/stop_1t 1t replace
