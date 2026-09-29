# 命名：stop_1t
# 説明：音楽のフェードアウト＆次の曲準備
# >/function neofunction:system/music/katabasis/stop
# =/function neofunction:system/music/katabasis/stop_1t

scoreboard players remove @a[tag=MusicStop,tag=MusicKatabasis] MusicStop 1
stopsound @a[tag=MusicStop,tag=MusicKatabasis,scores={MusicStop=0}] record minecraft:neo/asset/zippy/katabasis/1
stopsound @a[tag=MusicStop,tag=MusicKatabasis,scores={MusicStop=..4}] record minecraft:neo/asset/zippy/katabasis/2
stopsound @a[tag=MusicStop,tag=MusicKatabasis,scores={MusicStop=..8}] record minecraft:neo/asset/zippy/katabasis/3
stopsound @a[tag=MusicStop,tag=MusicKatabasis,scores={MusicStop=..12}] record minecraft:neo/asset/zippy/katabasis/4
stopsound @a[tag=MusicStop,tag=MusicKatabasis,scores={MusicStop=..16}] record minecraft:neo/asset/zippy/katabasis/5
stopsound @a[tag=MusicStop,tag=MusicKatabasis,scores={MusicStop=..20}] record minecraft:neo/asset/zippy/katabasis/6
stopsound @a[tag=MusicStop,tag=MusicKatabasis,scores={MusicStop=..24}] record minecraft:neo/asset/zippy/katabasis/7
stopsound @a[tag=MusicStop,tag=MusicKatabasis,scores={MusicStop=..28}] record minecraft:neo/asset/zippy/katabasis/8
stopsound @a[tag=MusicStop,tag=MusicKatabasis,scores={MusicStop=..32}] record minecraft:neo/asset/zippy/katabasis/9
stopsound @a[tag=MusicStop,tag=MusicKatabasis,scores={MusicStop=..36}] record minecraft:neo/asset/zippy/katabasis/10

execute as @a[tag=MusicStop,tag=MusicKatabasis,scores={MusicStop=0},tag=!MusicChange] run function neofunction:system/music/katabasis/finish
execute as @a[tag=MusicStop,tag=MusicKatabasis,scores={MusicStop=-8},tag=MusicChange] run function neofunction:system/music/katabasis/change

execute if entity @a[tag=MusicStop,tag=MusicKatabasis] run schedule function neofunction:system/music/katabasis/stop_1t 1t replace
