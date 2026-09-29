# 命名：stop_1t
# 説明：音楽のフェードアウト＆次の曲準備
# >/function neofunction:system/music/battle_fun/stop
# =/function neofunction:system/music/battle_fun/stop_1t

scoreboard players remove @a[tag=MusicStop,tag=MusicBattleFun] MusicStop 1
stopsound @a[tag=MusicStop,tag=MusicBattleFun,scores={MusicStop=0}] record minecraft:neo/asset/peritune/battle_fun/1
stopsound @a[tag=MusicStop,tag=MusicBattleFun,scores={MusicStop=..4}] record minecraft:neo/asset/peritune/battle_fun/2
stopsound @a[tag=MusicStop,tag=MusicBattleFun,scores={MusicStop=..8}] record minecraft:neo/asset/peritune/battle_fun/3
stopsound @a[tag=MusicStop,tag=MusicBattleFun,scores={MusicStop=..12}] record minecraft:neo/asset/peritune/battle_fun/4
stopsound @a[tag=MusicStop,tag=MusicBattleFun,scores={MusicStop=..16}] record minecraft:neo/asset/peritune/battle_fun/5
stopsound @a[tag=MusicStop,tag=MusicBattleFun,scores={MusicStop=..20}] record minecraft:neo/asset/peritune/battle_fun/6
stopsound @a[tag=MusicStop,tag=MusicBattleFun,scores={MusicStop=..24}] record minecraft:neo/asset/peritune/battle_fun/7
stopsound @a[tag=MusicStop,tag=MusicBattleFun,scores={MusicStop=..28}] record minecraft:neo/asset/peritune/battle_fun/8
stopsound @a[tag=MusicStop,tag=MusicBattleFun,scores={MusicStop=..32}] record minecraft:neo/asset/peritune/battle_fun/9
stopsound @a[tag=MusicStop,tag=MusicBattleFun,scores={MusicStop=..36}] record minecraft:neo/asset/peritune/battle_fun/10

execute as @a[tag=MusicStop,tag=MusicBattleFun,scores={MusicStop=0},tag=!MusicChange] run function neofunction:system/music/battle_fun/finish
execute as @a[tag=MusicStop,tag=MusicBattleFun,scores={MusicStop=-8},tag=MusicChange] run function neofunction:system/music/battle_fun/change

execute if entity @a[tag=MusicStop,tag=MusicBattleFun] run schedule function neofunction:system/music/battle_fun/stop_1t 1t replace
