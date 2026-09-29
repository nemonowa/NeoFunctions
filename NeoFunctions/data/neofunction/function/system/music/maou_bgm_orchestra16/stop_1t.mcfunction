# 命名：stop_1t
# 説明：音楽のフェードアウト＆次の曲準備
# >/function neofunction:system/music/maou_bgm_orchestra16/stop
# =/function neofunction:system/music/maou_bgm_orchestra16/stop_1t

scoreboard players remove @a[tag=MusicStop,tag=MusicMaouBgmOrchestra16] MusicStop 1
stopsound @a[tag=MusicStop,tag=MusicMaouBgmOrchestra16,scores={MusicStop=0}] record minecraft:neo/asset/maou/maou_bgm_orchestra16/1
stopsound @a[tag=MusicStop,tag=MusicMaouBgmOrchestra16,scores={MusicStop=..4}] record minecraft:neo/asset/maou/maou_bgm_orchestra16/2
stopsound @a[tag=MusicStop,tag=MusicMaouBgmOrchestra16,scores={MusicStop=..8}] record minecraft:neo/asset/maou/maou_bgm_orchestra16/3
stopsound @a[tag=MusicStop,tag=MusicMaouBgmOrchestra16,scores={MusicStop=..12}] record minecraft:neo/asset/maou/maou_bgm_orchestra16/4
stopsound @a[tag=MusicStop,tag=MusicMaouBgmOrchestra16,scores={MusicStop=..16}] record minecraft:neo/asset/maou/maou_bgm_orchestra16/5
stopsound @a[tag=MusicStop,tag=MusicMaouBgmOrchestra16,scores={MusicStop=..20}] record minecraft:neo/asset/maou/maou_bgm_orchestra16/6
stopsound @a[tag=MusicStop,tag=MusicMaouBgmOrchestra16,scores={MusicStop=..24}] record minecraft:neo/asset/maou/maou_bgm_orchestra16/7
stopsound @a[tag=MusicStop,tag=MusicMaouBgmOrchestra16,scores={MusicStop=..28}] record minecraft:neo/asset/maou/maou_bgm_orchestra16/8
stopsound @a[tag=MusicStop,tag=MusicMaouBgmOrchestra16,scores={MusicStop=..32}] record minecraft:neo/asset/maou/maou_bgm_orchestra16/9
stopsound @a[tag=MusicStop,tag=MusicMaouBgmOrchestra16,scores={MusicStop=..36}] record minecraft:neo/asset/maou/maou_bgm_orchestra16/10

execute as @a[tag=MusicStop,tag=MusicMaouBgmOrchestra16,scores={MusicStop=0},tag=!MusicChange] run function neofunction:system/music/maou_bgm_orchestra16/finish
execute as @a[tag=MusicStop,tag=MusicMaouBgmOrchestra16,scores={MusicStop=-8},tag=MusicChange] run function neofunction:system/music/maou_bgm_orchestra16/change

execute if entity @a[tag=MusicStop,tag=MusicMaouBgmOrchestra16] run schedule function neofunction:system/music/maou_bgm_orchestra16/stop_1t 1t replace
