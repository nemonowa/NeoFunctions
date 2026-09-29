# 命名：infinity
# 説明：froggame インフィニティモード(Wave16以降・無限湧き/自己再スケジュール)
# >/function neofunction:asset/event/froggame/w15 ←からの300s
# >/function neofunction:asset/event/froggame/infinity ←以降は自己再スケジュールでループ
# =/function neofunction:asset/event/froggame/infinity


# 内容

# 参加者が全滅していたら何もしない(respawn.mcfunction 側で既に end 済み → ここで自己終息)
execute unless entity @a[tag=froggame] run return 0

# ウェーブ数を進める(=到達Wave・報酬判定にそのまま使用)
scoreboard players add froggame temp 1

# ウェーブ開始タイトル(Wave番号はスコア埋め込みで動的表示)
title @a[tag=froggame] subtitle [{"text":"Frog Game – ","color":"#9A85FF"},{"text":"INFINITY","color":"#FF5E5E","bold":true}]
title @a[tag=froggame] title [{"text":"|||","color":"dark_red","bold":true,"obfuscated":true},{"text":" WAVE ","color":"red","bold":true,"obfuscated":false},{"score":{"name":"froggame","objective":"temp"},"color":"gold","bold":true,"obfuscated":false},{"text":" |||","color":"dark_red","bold":true,"obfuscated":true}]
execute as @a[tag=froggame] at @s run tellraw @s [{"text":"▶ ","color":"dark_gray"},{"text":"INFINITY WAVE ","color":"dark_red","bold":true},{"score":{"name":"froggame","objective":"temp"},"color":"gold","bold":true},{"text":" 出現：","color":"gray","bold":true},{"text":"増援エリート部隊、接近中...","color":"red"}]
execute as @a[tag=froggame] at @s run playsound minecraft:entity.wither.spawn record @s ~ ~ ~ 0.6 1.4


# ---- 敵編成 基本レイヤー(常時・エリート3種×2体=計6体) ----
execute in neodimension:ceresta_festa positioned 1027 44 2146 run function neofunction:asset/summon/704
execute in neodimension:ceresta_festa positioned 1027 44 2167 run function neofunction:asset/summon/703
execute in neodimension:ceresta_festa positioned 998 44 2167 run function neofunction:asset/summon/702
execute in neodimension:ceresta_festa positioned 998 44 2146 run function neofunction:asset/summon/704
execute in neodimension:ceresta_festa positioned 1015 44 2151 run function neofunction:asset/summon/703
execute in neodimension:ceresta_festa positioned 1010 44 2162 run function neofunction:asset/summon/702

# ---- 増援レイヤー1(Wave20〜: 同6地点にもう1体ずつ追加、計12体規模) ----
execute if score froggame temp matches 20.. in neodimension:ceresta_festa positioned 1027 44 2146 run function neofunction:asset/summon/703
execute if score froggame temp matches 20.. in neodimension:ceresta_festa positioned 1027 44 2167 run function neofunction:asset/summon/702
execute if score froggame temp matches 20.. in neodimension:ceresta_festa positioned 998 44 2167 run function neofunction:asset/summon/704
execute if score froggame temp matches 20.. in neodimension:ceresta_festa positioned 998 44 2146 run function neofunction:asset/summon/702
execute if score froggame temp matches 20.. in neodimension:ceresta_festa positioned 1015 44 2151 run function neofunction:asset/summon/704
execute if score froggame temp matches 20.. in neodimension:ceresta_festa positioned 1010 44 2162 run function neofunction:asset/summon/703

# ---- 増援レイヤー2(Wave24〜: 自爆兵を追加投入して圧力を上げる) ----
execute if score froggame temp matches 24.. in neodimension:ceresta_festa positioned 1015 44 2151 run function neofunction:asset/summon/690
execute if score froggame temp matches 24.. in neodimension:ceresta_festa positioned 1010 44 2162 run function neofunction:asset/summon/690

# ---- 増援レイヤー3(Wave28〜: 全6地点に3体目を追加、計18体規模で頭打ち) ----
execute if score froggame temp matches 28.. in neodimension:ceresta_festa positioned 1027 44 2146 run function neofunction:asset/summon/702
execute if score froggame temp matches 28.. in neodimension:ceresta_festa positioned 1027 44 2167 run function neofunction:asset/summon/704
execute if score froggame temp matches 28.. in neodimension:ceresta_festa positioned 998 44 2167 run function neofunction:asset/summon/703
execute if score froggame temp matches 28.. in neodimension:ceresta_festa positioned 998 44 2146 run function neofunction:asset/summon/703
execute if score froggame temp matches 28.. in neodimension:ceresta_festa positioned 1015 44 2151 run function neofunction:asset/summon/702
execute if score froggame temp matches 28.. in neodimension:ceresta_festa positioned 1010 44 2162 run function neofunction:asset/summon/704


# ---- 敵の強化バフ(Waveが進むほど増幅・以降は最大値で維持) ----
# effect give <対象> <効果> <秒数> <増幅値> <パーティクル非表示>
execute if score froggame temp matches 20..27 in neodimension:ceresta_festa positioned 1012.35 44.51 2157.00 run effect give @e[tag=enemy,distance=..32] minecraft:strength 40 0 true
execute if score froggame temp matches 20..27 in neodimension:ceresta_festa positioned 1012.35 44.51 2157.00 run effect give @e[tag=enemy,distance=..32] minecraft:speed 40 0 true
execute if score froggame temp matches 28..35 in neodimension:ceresta_festa positioned 1012.35 44.51 2157.00 run effect give @e[tag=enemy,distance=..32] minecraft:strength 40 1 true
execute if score froggame temp matches 28..35 in neodimension:ceresta_festa positioned 1012.35 44.51 2157.00 run effect give @e[tag=enemy,distance=..32] minecraft:speed 40 1 true
execute if score froggame temp matches 36.. in neodimension:ceresta_festa positioned 1012.35 44.51 2157.00 run effect give @e[tag=enemy,distance=..32] minecraft:strength 40 2 true
execute if score froggame temp matches 36.. in neodimension:ceresta_festa positioned 1012.35 44.51 2157.00 run effect give @e[tag=enemy,distance=..32] minecraft:speed 40 1 true
execute if score froggame temp matches 36.. in neodimension:ceresta_festa positioned 1012.35 44.51 2157.00 run effect give @e[tag=enemy,distance=..32] minecraft:resistance 40 0 true


# ---- 次ウェーブ予約(Waveが進むほど間隔が短縮 = どんどん厳しくなる、16s→6sで下げ止まり) ----
execute if score froggame temp matches 16..19 run schedule function neofunction:asset/event/froggame/infinity 16s
execute if score froggame temp matches 20..23 run schedule function neofunction:asset/event/froggame/infinity 14s
execute if score froggame temp matches 24..27 run schedule function neofunction:asset/event/froggame/infinity 12s
execute if score froggame temp matches 28..31 run schedule function neofunction:asset/event/froggame/infinity 10s
execute if score froggame temp matches 32..35 run schedule function neofunction:asset/event/froggame/infinity 8s
execute if score froggame temp matches 36.. run schedule function neofunction:asset/event/froggame/infinity 6s
