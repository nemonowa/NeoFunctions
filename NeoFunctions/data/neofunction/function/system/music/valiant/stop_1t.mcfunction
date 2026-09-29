# 命名：stop_1t
# 説明：音楽のフェードアウト＆次の曲準備
# >/function neofunction:system/music/valiant/stop
# =/function neofunction:system/music/valiant/stop_1t

scoreboard players remove @a[tag=MusicStop,tag=MusicValiant] MusicStop 1
stopsound @a[tag=MusicStop,tag=MusicValiant,scores={MusicStop=0}] record minecraft:neo/asset/peritune/valiant/1
stopsound @a[tag=MusicStop,tag=MusicValiant,scores={MusicStop=..4}] record minecraft:neo/asset/peritune/valiant/2
stopsound @a[tag=MusicStop,tag=MusicValiant,scores={MusicStop=..8}] record minecraft:neo/asset/peritune/valiant/3
stopsound @a[tag=MusicStop,tag=MusicValiant,scores={MusicStop=..12}] record minecraft:neo/asset/peritune/valiant/4
stopsound @a[tag=MusicStop,tag=MusicValiant,scores={MusicStop=..16}] record minecraft:neo/asset/peritune/valiant/5
stopsound @a[tag=MusicStop,tag=MusicValiant,scores={MusicStop=..20}] record minecraft:neo/asset/peritune/valiant/6
stopsound @a[tag=MusicStop,tag=MusicValiant,scores={MusicStop=..24}] record minecraft:neo/asset/peritune/valiant/7
stopsound @a[tag=MusicStop,tag=MusicValiant,scores={MusicStop=..28}] record minecraft:neo/asset/peritune/valiant/8
stopsound @a[tag=MusicStop,tag=MusicValiant,scores={MusicStop=..32}] record minecraft:neo/asset/peritune/valiant/9
stopsound @a[tag=MusicStop,tag=MusicValiant,scores={MusicStop=..36}] record minecraft:neo/asset/peritune/valiant/10

execute as @a[tag=MusicStop,tag=MusicValiant,scores={MusicStop=0},tag=!MusicChange] run function neofunction:system/music/valiant/finish
execute as @a[tag=MusicStop,tag=MusicValiant,scores={MusicStop=-8},tag=MusicChange] run function neofunction:system/music/valiant/change

execute if entity @a[tag=MusicStop,tag=MusicValiant] run schedule function neofunction:system/music/valiant/stop_1t 1t replace
