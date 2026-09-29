# 命名：.levelup
# 説明：レベルアップ演出
# >/function neofunction:system/adv/tick/lvl/<LVL>
# =/function neofunction:asset/particle/.levelup


# タイトル
title @s times 20 100 20
title @s subtitle ["",{"text":"= "},{"selector":"@s"},{"text":" reached "},{"score":{"name":"@s","objective":"LVL"}},{"text":" ="}]
title @s title [{"text":"꧁ ","color":"gold","bold":true,"italic":false},{"text":" LEVELUP ","color":"#C3D825","underlined":true},{"text":" ꧂","color":"gold"}]

# プレイサウンド
playsound minecraft:entity.player.levelup record @s ~ ~ ~ 1.0 1.20
playsound minecraft:entity.firework_rocket.large_blast record @s ~ ~ ~ 1 1 1

execute as @s anchored feet run particle enchant ~ ~ ~ 0.1 0.1 0.1 1 90 normal

# 花火
# summon firework_rocket ~ ~1 ~ {CustomNameVisible:0b,LifeTime:0,CustomName:{"text":"lvlup"},FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",colors:[I;16747786,8912655,1245128],fade_colors:[I;16760898,8453990,6721535],has_trail:true,has_twinkle:true}]}}}}

# summon firework_rocket ~ ~ ~ {CustomNameVisible:0b,LifeTime:16,CustomName:{"text":"lvlup"},FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;16747786,8912655,1245128],fade_colors:[I;16760898,8453990,15823871],has_trail:true,has_twinkle:true}]}}}}