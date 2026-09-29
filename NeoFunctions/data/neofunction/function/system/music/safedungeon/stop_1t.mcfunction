# 命名：stop_1t
# 説明：音楽のフェードアウト＆次の曲準備
# >/function neofunction:system/music/safedungeon/stop
# =/function neofunction:system/music/safedungeon/stop_1t

scoreboard players remove @a[tag=MusicStop,tag=MusicSafedungeon] MusicStop 1
stopsound @a[tag=MusicStop,tag=MusicSafedungeon,scores={MusicStop=0}] record minecraft:neo/asset/peritune/safedungeon/1
stopsound @a[tag=MusicStop,tag=MusicSafedungeon,scores={MusicStop=..4}] record minecraft:neo/asset/peritune/safedungeon/2
stopsound @a[tag=MusicStop,tag=MusicSafedungeon,scores={MusicStop=..8}] record minecraft:neo/asset/peritune/safedungeon/3
stopsound @a[tag=MusicStop,tag=MusicSafedungeon,scores={MusicStop=..12}] record minecraft:neo/asset/peritune/safedungeon/4
stopsound @a[tag=MusicStop,tag=MusicSafedungeon,scores={MusicStop=..16}] record minecraft:neo/asset/peritune/safedungeon/5
stopsound @a[tag=MusicStop,tag=MusicSafedungeon,scores={MusicStop=..20}] record minecraft:neo/asset/peritune/safedungeon/6
stopsound @a[tag=MusicStop,tag=MusicSafedungeon,scores={MusicStop=..24}] record minecraft:neo/asset/peritune/safedungeon/7
stopsound @a[tag=MusicStop,tag=MusicSafedungeon,scores={MusicStop=..28}] record minecraft:neo/asset/peritune/safedungeon/8
stopsound @a[tag=MusicStop,tag=MusicSafedungeon,scores={MusicStop=..32}] record minecraft:neo/asset/peritune/safedungeon/9
stopsound @a[tag=MusicStop,tag=MusicSafedungeon,scores={MusicStop=..36}] record minecraft:neo/asset/peritune/safedungeon/10

execute as @a[tag=MusicStop,tag=MusicSafedungeon,scores={MusicStop=0},tag=!MusicChange] run function neofunction:system/music/safedungeon/finish
execute as @a[tag=MusicStop,tag=MusicSafedungeon,scores={MusicStop=-8},tag=MusicChange] run function neofunction:system/music/safedungeon/change

execute if entity @a[tag=MusicStop,tag=MusicSafedungeon] run schedule function neofunction:system/music/safedungeon/stop_1t 1t replace
