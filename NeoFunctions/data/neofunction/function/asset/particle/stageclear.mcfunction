# 命名：stageclear
# 説明：レベルアップ演出
# >/function neofunction:system/1_detection
# =/function neofunction:asset/particle/stageclear



#タイトル
title @s times 20 100 20
title @s subtitle ["",{"text":"= "},{"selector":"@s"},{"text":" completes the stage ="}]
title @s title [{"text":"꧁ ","color":"gold","bold":true,"italic":false,"underlined":false},{"text":" STAGECLEAR ","color":"#C3D825","bold":true,"italic":false,"underlined":true},{"text":" ꧂","color":"gold","bold":true,"italic":false,"underlined":false}]

#プレイサウンド
playsound minecraft:entity.player.levelup record @a[distance=..16] ~ ~ ~ 1.0 1.20

#パーティクル

#花火
summon firework_rocket ~ ~-1 ~ {CustomNameVisible:0b,LifeTime:0,CustomName:{"text":"STAGECLEAR"},FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",colors:[I;16747786,8912655,1245128],fade_colors:[I;16760898,8453990,6721535],has_trail:true,has_twinkle:true}]}}}}

summon firework_rocket ~ ~ ~ {CustomNameVisible:0b,LifeTime:16,CustomName:{"text":"STAGECLEAR"},FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;16747786,8912655,1245128],fade_colors:[I;16760898,8453990,15823871],has_trail:true,has_twinkle:true}]}}}}