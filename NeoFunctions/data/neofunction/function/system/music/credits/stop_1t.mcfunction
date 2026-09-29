# 命名：stop_1t
# 説明：音楽のフェードアウト＆次の曲準備
# >/function neofunction:system/music/credits/stop
# =/function neofunction:system/music/credits/stop_1t

scoreboard players remove @a[tag=MusicStop,tag=MusicCredits] MusicStop 1
stopsound @a[tag=MusicStop,tag=MusicCredits,scores={MusicStop=0}] record minecraft:music.credits/1
stopsound @a[tag=MusicStop,tag=MusicCredits,scores={MusicStop=..4}] record minecraft:music.credits/2
stopsound @a[tag=MusicStop,tag=MusicCredits,scores={MusicStop=..8}] record minecraft:music.credits/3
stopsound @a[tag=MusicStop,tag=MusicCredits,scores={MusicStop=..12}] record minecraft:music.credits/4
stopsound @a[tag=MusicStop,tag=MusicCredits,scores={MusicStop=..16}] record minecraft:music.credits/5
stopsound @a[tag=MusicStop,tag=MusicCredits,scores={MusicStop=..20}] record minecraft:music.credits/6
stopsound @a[tag=MusicStop,tag=MusicCredits,scores={MusicStop=..24}] record minecraft:music.credits/7
stopsound @a[tag=MusicStop,tag=MusicCredits,scores={MusicStop=..28}] record minecraft:music.credits/8
stopsound @a[tag=MusicStop,tag=MusicCredits,scores={MusicStop=..32}] record minecraft:music.credits/9
stopsound @a[tag=MusicStop,tag=MusicCredits,scores={MusicStop=..36}] record minecraft:music.credits/10

execute as @a[tag=MusicStop,tag=MusicCredits,scores={MusicStop=0},tag=!MusicChange] run function neofunction:system/music/credits/finish
execute as @a[tag=MusicStop,tag=MusicCredits,scores={MusicStop=-8},tag=MusicChange] run function neofunction:system/music/credits/change

execute if entity @a[tag=MusicStop,tag=MusicCredits] run schedule function neofunction:system/music/credits/stop_1t 1t replace
