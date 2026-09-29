# 命名：stop_1t
# 説明：音楽のフェードアウト＆次の曲準備
# >/function neofunction:system/music/whisper/stop
# =/function neofunction:system/music/whisper/stop_1t

scoreboard players remove @a[tag=MusicStop,tag=MusicWhisper] MusicStop 1
stopsound @a[tag=MusicStop,tag=MusicWhisper,scores={MusicStop=0}] record minecraft:neo/asset/peritune/whisper/1
stopsound @a[tag=MusicStop,tag=MusicWhisper,scores={MusicStop=..4}] record minecraft:neo/asset/peritune/whisper/2
stopsound @a[tag=MusicStop,tag=MusicWhisper,scores={MusicStop=..8}] record minecraft:neo/asset/peritune/whisper/3
stopsound @a[tag=MusicStop,tag=MusicWhisper,scores={MusicStop=..12}] record minecraft:neo/asset/peritune/whisper/4
stopsound @a[tag=MusicStop,tag=MusicWhisper,scores={MusicStop=..16}] record minecraft:neo/asset/peritune/whisper/5
stopsound @a[tag=MusicStop,tag=MusicWhisper,scores={MusicStop=..20}] record minecraft:neo/asset/peritune/whisper/6
stopsound @a[tag=MusicStop,tag=MusicWhisper,scores={MusicStop=..24}] record minecraft:neo/asset/peritune/whisper/7
stopsound @a[tag=MusicStop,tag=MusicWhisper,scores={MusicStop=..28}] record minecraft:neo/asset/peritune/whisper/8
stopsound @a[tag=MusicStop,tag=MusicWhisper,scores={MusicStop=..32}] record minecraft:neo/asset/peritune/whisper/9
stopsound @a[tag=MusicStop,tag=MusicWhisper,scores={MusicStop=..36}] record minecraft:neo/asset/peritune/whisper/10

execute as @a[tag=MusicStop,tag=MusicWhisper,scores={MusicStop=0},tag=!MusicChange] run function neofunction:system/music/whisper/finish
execute as @a[tag=MusicStop,tag=MusicWhisper,scores={MusicStop=-8},tag=MusicChange] run function neofunction:system/music/whisper/change

execute if entity @a[tag=MusicStop,tag=MusicWhisper] run schedule function neofunction:system/music/whisper/stop_1t 1t replace
