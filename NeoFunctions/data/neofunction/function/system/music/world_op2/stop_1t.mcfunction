# 命名：stop_1t
# 説明：音楽のフェードアウト＆次の曲準備
# >/function neofunction:system/music/world_op2/stop
# =/function neofunction:system/music/world_op2/stop_1t

scoreboard players remove @a[tag=MusicStop,tag=MusicWorld_OP2] MusicStop 1
stopsound @a[tag=MusicStop,tag=MusicWorld_OP2,scores={MusicStop=0}] record minecraft:neo/asset/peritune/world_op2/1
stopsound @a[tag=MusicStop,tag=MusicWorld_OP2,scores={MusicStop=..4}] record minecraft:neo/asset/peritune/world_op2/2
stopsound @a[tag=MusicStop,tag=MusicWorld_OP2,scores={MusicStop=..8}] record minecraft:neo/asset/peritune/world_op2/3
stopsound @a[tag=MusicStop,tag=MusicWorld_OP2,scores={MusicStop=..12}] record minecraft:neo/asset/peritune/world_op2/4
stopsound @a[tag=MusicStop,tag=MusicWorld_OP2,scores={MusicStop=..16}] record minecraft:neo/asset/peritune/world_op2/5
stopsound @a[tag=MusicStop,tag=MusicWorld_OP2,scores={MusicStop=..20}] record minecraft:neo/asset/peritune/world_op2/6
stopsound @a[tag=MusicStop,tag=MusicWorld_OP2,scores={MusicStop=..24}] record minecraft:neo/asset/peritune/world_op2/7
stopsound @a[tag=MusicStop,tag=MusicWorld_OP2,scores={MusicStop=..28}] record minecraft:neo/asset/peritune/world_op2/8
stopsound @a[tag=MusicStop,tag=MusicWorld_OP2,scores={MusicStop=..32}] record minecraft:neo/asset/peritune/world_op2/9
stopsound @a[tag=MusicStop,tag=MusicWorld_OP2,scores={MusicStop=..36}] record minecraft:neo/asset/peritune/world_op2/10

execute as @a[tag=MusicStop,tag=MusicWorld_OP2,scores={MusicStop=0},tag=!MusicChange] run function neofunction:system/music/world_op2/finish
execute as @a[tag=MusicStop,tag=MusicWorld_OP2,scores={MusicStop=-8},tag=MusicChange] run function neofunction:system/music/world_op2/change

execute if entity @a[tag=MusicStop,tag=MusicWorld_OP2] run schedule function neofunction:system/music/world_op2/stop_1t 1t replace
