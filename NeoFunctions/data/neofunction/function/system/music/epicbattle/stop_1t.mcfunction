# 命名：stop_1t
# 説明：音楽のフェードアウト＆次の曲準備
# >/function neofunction:system/music/epicbattle/stop
# =/function neofunction:system/music/epicbattle/stop_1t

scoreboard players remove @a[tag=MusicStop,tag=MusicEpicbattle] MusicStop 1
stopsound @a[tag=MusicStop,tag=MusicEpicbattle,scores={MusicStop=0}] record minecraft:neo/asset/peritune/epicbattle/1
stopsound @a[tag=MusicStop,tag=MusicEpicbattle,scores={MusicStop=..4}] record minecraft:neo/asset/peritune/epicbattle/2
stopsound @a[tag=MusicStop,tag=MusicEpicbattle,scores={MusicStop=..8}] record minecraft:neo/asset/peritune/epicbattle/3
stopsound @a[tag=MusicStop,tag=MusicEpicbattle,scores={MusicStop=..12}] record minecraft:neo/asset/peritune/epicbattle/4
stopsound @a[tag=MusicStop,tag=MusicEpicbattle,scores={MusicStop=..16}] record minecraft:neo/asset/peritune/epicbattle/5
stopsound @a[tag=MusicStop,tag=MusicEpicbattle,scores={MusicStop=..20}] record minecraft:neo/asset/peritune/epicbattle/6
stopsound @a[tag=MusicStop,tag=MusicEpicbattle,scores={MusicStop=..24}] record minecraft:neo/asset/peritune/epicbattle/7
stopsound @a[tag=MusicStop,tag=MusicEpicbattle,scores={MusicStop=..28}] record minecraft:neo/asset/peritune/epicbattle/8
stopsound @a[tag=MusicStop,tag=MusicEpicbattle,scores={MusicStop=..32}] record minecraft:neo/asset/peritune/epicbattle/9
stopsound @a[tag=MusicStop,tag=MusicEpicbattle,scores={MusicStop=..36}] record minecraft:neo/asset/peritune/epicbattle/10

execute as @a[tag=MusicStop,tag=MusicEpicbattle,scores={MusicStop=0},tag=!MusicChange] run function neofunction:system/music/epicbattle/finish
execute as @a[tag=MusicStop,tag=MusicEpicbattle,scores={MusicStop=-8},tag=MusicChange] run function neofunction:system/music/epicbattle/change

execute if entity @a[tag=MusicStop,tag=MusicEpicbattle] run schedule function neofunction:system/music/epicbattle/stop_1t 1t replace
