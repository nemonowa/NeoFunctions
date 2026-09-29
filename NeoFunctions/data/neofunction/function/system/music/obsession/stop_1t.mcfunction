# 命名：stop_1t
# 説明：音楽のフェードアウト＆次の曲準備
# >/function neofunction:system/music/obsession/stop
# =/function neofunction:system/music/obsession/stop_1t

scoreboard players remove @a[tag=MusicStop,tag=MusicObsession] MusicStop 1
stopsound @a[tag=MusicStop,tag=MusicObsession,scores={MusicStop=0}] record minecraft:neo/asset/peritune/obsession/1
stopsound @a[tag=MusicStop,tag=MusicObsession,scores={MusicStop=..4}] record minecraft:neo/asset/peritune/obsession/2
stopsound @a[tag=MusicStop,tag=MusicObsession,scores={MusicStop=..8}] record minecraft:neo/asset/peritune/obsession/3
stopsound @a[tag=MusicStop,tag=MusicObsession,scores={MusicStop=..12}] record minecraft:neo/asset/peritune/obsession/4
stopsound @a[tag=MusicStop,tag=MusicObsession,scores={MusicStop=..16}] record minecraft:neo/asset/peritune/obsession/5
stopsound @a[tag=MusicStop,tag=MusicObsession,scores={MusicStop=..20}] record minecraft:neo/asset/peritune/obsession/6
stopsound @a[tag=MusicStop,tag=MusicObsession,scores={MusicStop=..24}] record minecraft:neo/asset/peritune/obsession/7
stopsound @a[tag=MusicStop,tag=MusicObsession,scores={MusicStop=..28}] record minecraft:neo/asset/peritune/obsession/8
stopsound @a[tag=MusicStop,tag=MusicObsession,scores={MusicStop=..32}] record minecraft:neo/asset/peritune/obsession/9
stopsound @a[tag=MusicStop,tag=MusicObsession,scores={MusicStop=..36}] record minecraft:neo/asset/peritune/obsession/10

execute as @a[tag=MusicStop,tag=MusicObsession,scores={MusicStop=0},tag=!MusicChange] run function neofunction:system/music/obsession/finish
execute as @a[tag=MusicStop,tag=MusicObsession,scores={MusicStop=-8},tag=MusicChange] run function neofunction:system/music/obsession/change

execute if entity @a[tag=MusicStop,tag=MusicObsession] run schedule function neofunction:system/music/obsession/stop_1t 1t replace
