# 命名：stage_break
# 説明：【追加：2026-10-13 ルブラ編】第 3 形態の舞台の崩れ（毎 tick、sc を数える。1〜130）：第 1・2 形態で使った遮る柱 6 本、小島の星灯の柱とランプ、小島の台と橋が崩れ落ち、隠れる所がなくなる
# 説明：2 揺れと知らせ／20〜38 遮る柱を上から 1 段ずつ／50〜86 星灯のランプと柱を上から 1 段ずつ／95 橋、100〜110 小島の台を上から／130 おわり。fill の destroy で崩す（壊れる粒と音が出る）。落ちたアイテムは毎 tick 消す
# 実行条件：実行者・実行位置 本体（第 3 形態）
# >/function neofunction:entity/skill/boss/rubra_void/form3
# =/function neofunction:entity/skill/boss/rubra_void/stage_break

# 内容
execute store result score #rv_sc temp run data get storage neofunction:rubra fin.sc
scoreboard players add #rv_sc temp 1
execute store result storage neofunction:rubra fin.sc int 1 run scoreboard players get #rv_sc temp
# 崩れて落ちたアイテムを消す
kill @e[type=item,x=860,y=150,z=3220,dx=125,dy=70,dz=125]
# 揺れ（0.5 秒ごと）
scoreboard players operation #rv_m temp = #rv_sc temp
scoreboard players operation #rv_m temp %= $10 const
execute if score #rv_m temp matches 0 positioned 921.5 200 3282.5 run playsound minecraft:entity.ravager.roar hostile @a[distance=..160] ~ ~ ~ 2 0.5
execute if score #rv_m temp matches 0 positioned 921.5 200 3282.5 run playsound minecraft:block.basalt.break hostile @a[distance=..160] ~ ~ ~ 3 0.5
execute if score #rv_m temp matches 0 positioned 921.5 200 3282.5 run particle minecraft:falling_dust{block_state:"minecraft:smooth_quartz"} ~ ~8 ~ 40 6 40 0 120 force @a[distance=..160]
# 知らせ
execute if score #rv_sc temp matches 2 run tellraw @a[distance=..160] {"text":"顎が吠えた。その声に、空の舞台がきしむ。柱にひびが走り、星灯の小島が、根もとから傾きはじめた――","color":"gray","italic":true}
execute if score #rv_sc temp matches 2 run tellraw @a[distance=..160] [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「舞台が崩れる！ 旅人さん、小島から真ん中へ戻って！ もう、隠れる柱はないよ！」"}]
execute if score #rv_sc temp matches 20 run fill 903 203 3271 905 203 3273 minecraft:air destroy
execute if score #rv_sc temp matches 20 run fill 903 203 3291 905 203 3293 minecraft:air destroy
execute if score #rv_sc temp matches 20 run fill 920 203 3261 922 203 3263 minecraft:air destroy
execute if score #rv_sc temp matches 20 run fill 920 203 3301 922 203 3303 minecraft:air destroy
execute if score #rv_sc temp matches 20 run fill 937 203 3271 939 203 3273 minecraft:air destroy
execute if score #rv_sc temp matches 20 run fill 937 203 3291 939 203 3293 minecraft:air destroy
execute if score #rv_sc temp matches 20 run particle minecraft:explosion 904.5 203 3272.5 1 0.5 1 0 3 force @a[distance=..160]
execute if score #rv_sc temp matches 20 run particle minecraft:explosion 904.5 203 3292.5 1 0.5 1 0 3 force @a[distance=..160]
execute if score #rv_sc temp matches 20 run particle minecraft:explosion 921.5 203 3262.5 1 0.5 1 0 3 force @a[distance=..160]
execute if score #rv_sc temp matches 20 run particle minecraft:explosion 921.5 203 3302.5 1 0.5 1 0 3 force @a[distance=..160]
execute if score #rv_sc temp matches 20 run particle minecraft:explosion 938.5 203 3272.5 1 0.5 1 0 3 force @a[distance=..160]
execute if score #rv_sc temp matches 20 run particle minecraft:explosion 938.5 203 3292.5 1 0.5 1 0 3 force @a[distance=..160]
execute if score #rv_sc temp matches 20 positioned 921.5 201 3282.5 run playsound minecraft:entity.generic.explode hostile @a[distance=..160] ~ ~ ~ 2 0.7
execute if score #rv_sc temp matches 26 run fill 903 202 3271 905 202 3273 minecraft:air destroy
execute if score #rv_sc temp matches 26 run fill 903 202 3291 905 202 3293 minecraft:air destroy
execute if score #rv_sc temp matches 26 run fill 920 202 3261 922 202 3263 minecraft:air destroy
execute if score #rv_sc temp matches 26 run fill 920 202 3301 922 202 3303 minecraft:air destroy
execute if score #rv_sc temp matches 26 run fill 937 202 3271 939 202 3273 minecraft:air destroy
execute if score #rv_sc temp matches 26 run fill 937 202 3291 939 202 3293 minecraft:air destroy
execute if score #rv_sc temp matches 26 run particle minecraft:explosion 904.5 202 3272.5 1 0.5 1 0 3 force @a[distance=..160]
execute if score #rv_sc temp matches 26 run particle minecraft:explosion 904.5 202 3292.5 1 0.5 1 0 3 force @a[distance=..160]
execute if score #rv_sc temp matches 26 run particle minecraft:explosion 921.5 202 3262.5 1 0.5 1 0 3 force @a[distance=..160]
execute if score #rv_sc temp matches 26 run particle minecraft:explosion 921.5 202 3302.5 1 0.5 1 0 3 force @a[distance=..160]
execute if score #rv_sc temp matches 26 run particle minecraft:explosion 938.5 202 3272.5 1 0.5 1 0 3 force @a[distance=..160]
execute if score #rv_sc temp matches 26 run particle minecraft:explosion 938.5 202 3292.5 1 0.5 1 0 3 force @a[distance=..160]
execute if score #rv_sc temp matches 26 positioned 921.5 201 3282.5 run playsound minecraft:entity.generic.explode hostile @a[distance=..160] ~ ~ ~ 2 0.7
execute if score #rv_sc temp matches 32 run fill 903 201 3271 905 201 3273 minecraft:air destroy
execute if score #rv_sc temp matches 32 run fill 903 201 3291 905 201 3293 minecraft:air destroy
execute if score #rv_sc temp matches 32 run fill 920 201 3261 922 201 3263 minecraft:air destroy
execute if score #rv_sc temp matches 32 run fill 920 201 3301 922 201 3303 minecraft:air destroy
execute if score #rv_sc temp matches 32 run fill 937 201 3271 939 201 3273 minecraft:air destroy
execute if score #rv_sc temp matches 32 run fill 937 201 3291 939 201 3293 minecraft:air destroy
execute if score #rv_sc temp matches 32 run particle minecraft:explosion 904.5 201 3272.5 1 0.5 1 0 3 force @a[distance=..160]
execute if score #rv_sc temp matches 32 run particle minecraft:explosion 904.5 201 3292.5 1 0.5 1 0 3 force @a[distance=..160]
execute if score #rv_sc temp matches 32 run particle minecraft:explosion 921.5 201 3262.5 1 0.5 1 0 3 force @a[distance=..160]
execute if score #rv_sc temp matches 32 run particle minecraft:explosion 921.5 201 3302.5 1 0.5 1 0 3 force @a[distance=..160]
execute if score #rv_sc temp matches 32 run particle minecraft:explosion 938.5 201 3272.5 1 0.5 1 0 3 force @a[distance=..160]
execute if score #rv_sc temp matches 32 run particle minecraft:explosion 938.5 201 3292.5 1 0.5 1 0 3 force @a[distance=..160]
execute if score #rv_sc temp matches 32 positioned 921.5 201 3282.5 run playsound minecraft:entity.generic.explode hostile @a[distance=..160] ~ ~ ~ 2 0.7
execute if score #rv_sc temp matches 38 run fill 903 200 3271 905 200 3273 minecraft:air destroy
execute if score #rv_sc temp matches 38 run fill 903 200 3291 905 200 3293 minecraft:air destroy
execute if score #rv_sc temp matches 38 run fill 920 200 3261 922 200 3263 minecraft:air destroy
execute if score #rv_sc temp matches 38 run fill 920 200 3301 922 200 3303 minecraft:air destroy
execute if score #rv_sc temp matches 38 run fill 937 200 3271 939 200 3273 minecraft:air destroy
execute if score #rv_sc temp matches 38 run fill 937 200 3291 939 200 3293 minecraft:air destroy
execute if score #rv_sc temp matches 38 run particle minecraft:explosion 904.5 200 3272.5 1 0.5 1 0 3 force @a[distance=..160]
execute if score #rv_sc temp matches 38 run particle minecraft:explosion 904.5 200 3292.5 1 0.5 1 0 3 force @a[distance=..160]
execute if score #rv_sc temp matches 38 run particle minecraft:explosion 921.5 200 3262.5 1 0.5 1 0 3 force @a[distance=..160]
execute if score #rv_sc temp matches 38 run particle minecraft:explosion 921.5 200 3302.5 1 0.5 1 0 3 force @a[distance=..160]
execute if score #rv_sc temp matches 38 run particle minecraft:explosion 938.5 200 3272.5 1 0.5 1 0 3 force @a[distance=..160]
execute if score #rv_sc temp matches 38 run particle minecraft:explosion 938.5 200 3292.5 1 0.5 1 0 3 force @a[distance=..160]
execute if score #rv_sc temp matches 38 positioned 921.5 201 3282.5 run playsound minecraft:entity.generic.explode hostile @a[distance=..160] ~ ~ ~ 2 0.7
execute if score #rv_sc temp matches 50 run kill @e[type=marker,tag=rubra_pillar]
execute if score #rv_sc temp matches 50 run fill 921 209 3236 921 209 3236 minecraft:air destroy
execute if score #rv_sc temp matches 50 run fill 954 209 3249 954 209 3249 minecraft:air destroy
execute if score #rv_sc temp matches 50 run fill 967 209 3282 967 209 3282 minecraft:air destroy
execute if score #rv_sc temp matches 50 run fill 954 209 3315 954 209 3315 minecraft:air destroy
execute if score #rv_sc temp matches 50 run fill 921 209 3328 921 209 3328 minecraft:air destroy
execute if score #rv_sc temp matches 50 run fill 888 209 3315 888 209 3315 minecraft:air destroy
execute if score #rv_sc temp matches 50 run fill 875 209 3282 875 209 3282 minecraft:air destroy
execute if score #rv_sc temp matches 50 run fill 888 209 3249 888 209 3249 minecraft:air destroy
execute if score #rv_sc temp matches 54 run fill 921 208 3236 921 208 3236 minecraft:air destroy
execute if score #rv_sc temp matches 54 run fill 954 208 3249 954 208 3249 minecraft:air destroy
execute if score #rv_sc temp matches 54 run fill 967 208 3282 967 208 3282 minecraft:air destroy
execute if score #rv_sc temp matches 54 run fill 954 208 3315 954 208 3315 minecraft:air destroy
execute if score #rv_sc temp matches 54 run fill 921 208 3328 921 208 3328 minecraft:air destroy
execute if score #rv_sc temp matches 54 run fill 888 208 3315 888 208 3315 minecraft:air destroy
execute if score #rv_sc temp matches 54 run fill 875 208 3282 875 208 3282 minecraft:air destroy
execute if score #rv_sc temp matches 54 run fill 888 208 3249 888 208 3249 minecraft:air destroy
execute if score #rv_sc temp matches 58 run fill 921 207 3236 921 207 3236 minecraft:air destroy
execute if score #rv_sc temp matches 58 run fill 954 207 3249 954 207 3249 minecraft:air destroy
execute if score #rv_sc temp matches 58 run fill 967 207 3282 967 207 3282 minecraft:air destroy
execute if score #rv_sc temp matches 58 run fill 954 207 3315 954 207 3315 minecraft:air destroy
execute if score #rv_sc temp matches 58 run fill 921 207 3328 921 207 3328 minecraft:air destroy
execute if score #rv_sc temp matches 58 run fill 888 207 3315 888 207 3315 minecraft:air destroy
execute if score #rv_sc temp matches 58 run fill 875 207 3282 875 207 3282 minecraft:air destroy
execute if score #rv_sc temp matches 58 run fill 888 207 3249 888 207 3249 minecraft:air destroy
execute if score #rv_sc temp matches 62 run fill 921 206 3236 921 206 3236 minecraft:air destroy
execute if score #rv_sc temp matches 62 run fill 954 206 3249 954 206 3249 minecraft:air destroy
execute if score #rv_sc temp matches 62 run fill 967 206 3282 967 206 3282 minecraft:air destroy
execute if score #rv_sc temp matches 62 run fill 954 206 3315 954 206 3315 minecraft:air destroy
execute if score #rv_sc temp matches 62 run fill 921 206 3328 921 206 3328 minecraft:air destroy
execute if score #rv_sc temp matches 62 run fill 888 206 3315 888 206 3315 minecraft:air destroy
execute if score #rv_sc temp matches 62 run fill 875 206 3282 875 206 3282 minecraft:air destroy
execute if score #rv_sc temp matches 62 run fill 888 206 3249 888 206 3249 minecraft:air destroy
execute if score #rv_sc temp matches 66 run fill 921 205 3236 921 205 3236 minecraft:air destroy
execute if score #rv_sc temp matches 66 run fill 954 205 3249 954 205 3249 minecraft:air destroy
execute if score #rv_sc temp matches 66 run fill 967 205 3282 967 205 3282 minecraft:air destroy
execute if score #rv_sc temp matches 66 run fill 954 205 3315 954 205 3315 minecraft:air destroy
execute if score #rv_sc temp matches 66 run fill 921 205 3328 921 205 3328 minecraft:air destroy
execute if score #rv_sc temp matches 66 run fill 888 205 3315 888 205 3315 minecraft:air destroy
execute if score #rv_sc temp matches 66 run fill 875 205 3282 875 205 3282 minecraft:air destroy
execute if score #rv_sc temp matches 66 run fill 888 205 3249 888 205 3249 minecraft:air destroy
execute if score #rv_sc temp matches 70 run fill 921 204 3236 921 204 3236 minecraft:air destroy
execute if score #rv_sc temp matches 70 run fill 954 204 3249 954 204 3249 minecraft:air destroy
execute if score #rv_sc temp matches 70 run fill 967 204 3282 967 204 3282 minecraft:air destroy
execute if score #rv_sc temp matches 70 run fill 954 204 3315 954 204 3315 minecraft:air destroy
execute if score #rv_sc temp matches 70 run fill 921 204 3328 921 204 3328 minecraft:air destroy
execute if score #rv_sc temp matches 70 run fill 888 204 3315 888 204 3315 minecraft:air destroy
execute if score #rv_sc temp matches 70 run fill 875 204 3282 875 204 3282 minecraft:air destroy
execute if score #rv_sc temp matches 70 run fill 888 204 3249 888 204 3249 minecraft:air destroy
execute if score #rv_sc temp matches 74 run fill 921 203 3236 921 203 3236 minecraft:air destroy
execute if score #rv_sc temp matches 74 run fill 954 203 3249 954 203 3249 minecraft:air destroy
execute if score #rv_sc temp matches 74 run fill 967 203 3282 967 203 3282 minecraft:air destroy
execute if score #rv_sc temp matches 74 run fill 954 203 3315 954 203 3315 minecraft:air destroy
execute if score #rv_sc temp matches 74 run fill 921 203 3328 921 203 3328 minecraft:air destroy
execute if score #rv_sc temp matches 74 run fill 888 203 3315 888 203 3315 minecraft:air destroy
execute if score #rv_sc temp matches 74 run fill 875 203 3282 875 203 3282 minecraft:air destroy
execute if score #rv_sc temp matches 74 run fill 888 203 3249 888 203 3249 minecraft:air destroy
execute if score #rv_sc temp matches 78 run fill 921 202 3236 921 202 3236 minecraft:air destroy
execute if score #rv_sc temp matches 78 run fill 954 202 3249 954 202 3249 minecraft:air destroy
execute if score #rv_sc temp matches 78 run fill 967 202 3282 967 202 3282 minecraft:air destroy
execute if score #rv_sc temp matches 78 run fill 954 202 3315 954 202 3315 minecraft:air destroy
execute if score #rv_sc temp matches 78 run fill 921 202 3328 921 202 3328 minecraft:air destroy
execute if score #rv_sc temp matches 78 run fill 888 202 3315 888 202 3315 minecraft:air destroy
execute if score #rv_sc temp matches 78 run fill 875 202 3282 875 202 3282 minecraft:air destroy
execute if score #rv_sc temp matches 78 run fill 888 202 3249 888 202 3249 minecraft:air destroy
execute if score #rv_sc temp matches 82 run fill 921 201 3236 921 201 3236 minecraft:air destroy
execute if score #rv_sc temp matches 82 run fill 954 201 3249 954 201 3249 minecraft:air destroy
execute if score #rv_sc temp matches 82 run fill 967 201 3282 967 201 3282 minecraft:air destroy
execute if score #rv_sc temp matches 82 run fill 954 201 3315 954 201 3315 minecraft:air destroy
execute if score #rv_sc temp matches 82 run fill 921 201 3328 921 201 3328 minecraft:air destroy
execute if score #rv_sc temp matches 82 run fill 888 201 3315 888 201 3315 minecraft:air destroy
execute if score #rv_sc temp matches 82 run fill 875 201 3282 875 201 3282 minecraft:air destroy
execute if score #rv_sc temp matches 82 run fill 888 201 3249 888 201 3249 minecraft:air destroy
execute if score #rv_sc temp matches 86 run fill 921 200 3236 921 200 3236 minecraft:air destroy
execute if score #rv_sc temp matches 86 run fill 954 200 3249 954 200 3249 minecraft:air destroy
execute if score #rv_sc temp matches 86 run fill 967 200 3282 967 200 3282 minecraft:air destroy
execute if score #rv_sc temp matches 86 run fill 954 200 3315 954 200 3315 minecraft:air destroy
execute if score #rv_sc temp matches 86 run fill 921 200 3328 921 200 3328 minecraft:air destroy
execute if score #rv_sc temp matches 86 run fill 888 200 3315 888 200 3315 minecraft:air destroy
execute if score #rv_sc temp matches 86 run fill 875 200 3282 875 200 3282 minecraft:air destroy
execute if score #rv_sc temp matches 86 run fill 888 200 3249 888 200 3249 minecraft:air destroy
execute if score #rv_sc temp matches 50 run particle minecraft:flash{color:[1.0,0.6,0.2,1.0]} 921.5 209.5 3236.5 0 0 0 0 1 force @a[distance=..160]
execute if score #rv_sc temp matches 50 run particle minecraft:flash{color:[1.0,0.6,0.2,1.0]} 954.5 209.5 3249.5 0 0 0 0 1 force @a[distance=..160]
execute if score #rv_sc temp matches 50 run particle minecraft:flash{color:[1.0,0.6,0.2,1.0]} 967.5 209.5 3282.5 0 0 0 0 1 force @a[distance=..160]
execute if score #rv_sc temp matches 50 run particle minecraft:flash{color:[1.0,0.6,0.2,1.0]} 954.5 209.5 3315.5 0 0 0 0 1 force @a[distance=..160]
execute if score #rv_sc temp matches 50 run particle minecraft:flash{color:[1.0,0.6,0.2,1.0]} 921.5 209.5 3328.5 0 0 0 0 1 force @a[distance=..160]
execute if score #rv_sc temp matches 50 run particle minecraft:flash{color:[1.0,0.6,0.2,1.0]} 888.5 209.5 3315.5 0 0 0 0 1 force @a[distance=..160]
execute if score #rv_sc temp matches 50 run particle minecraft:flash{color:[1.0,0.6,0.2,1.0]} 875.5 209.5 3282.5 0 0 0 0 1 force @a[distance=..160]
execute if score #rv_sc temp matches 50 run particle minecraft:flash{color:[1.0,0.6,0.2,1.0]} 888.5 209.5 3249.5 0 0 0 0 1 force @a[distance=..160]
execute if score #rv_sc temp matches 50 positioned 921.5 205 3282.5 run playsound minecraft:block.glass.break hostile @a[distance=..160] ~ ~ ~ 3 0.6
execute if score #rv_sc temp matches 50 run tellraw @a[distance=..160] {"text":"星灯の柱が、ひとつ、またひとつと折れていく。灯籠の光が、夜空へ散った。","color":"gray","italic":true}
execute if score #rv_sc temp matches 95 run fill 881 194 3279 890 199 3285 minecraft:air destroy
execute if score #rv_sc temp matches 95 run fill 952 194 3279 961 199 3285 minecraft:air destroy
execute if score #rv_sc temp matches 95 run fill 918 194 3242 924 199 3251 minecraft:air destroy
execute if score #rv_sc temp matches 95 run fill 918 194 3313 924 199 3322 minecraft:air destroy
execute if score #rv_sc temp matches 95 run fill 942 194 3253 950 199 3260 minecraft:air destroy
execute if score #rv_sc temp matches 95 run fill 942 194 3304 950 199 3311 minecraft:air destroy
execute if score #rv_sc temp matches 95 run fill 892 194 3304 900 199 3311 minecraft:air destroy
execute if score #rv_sc temp matches 95 run fill 892 194 3253 900 199 3260 minecraft:air destroy
execute if score #rv_sc temp matches 95 positioned 921.5 199 3282.5 run playsound minecraft:entity.generic.explode hostile @a[distance=..160] ~ ~ ~ 3 0.5
execute if score #rv_sc temp matches 100 run fill 915 199 3230 927 199 3242 minecraft:air destroy
execute if score #rv_sc temp matches 100 run fill 948 199 3243 960 199 3255 minecraft:air destroy
execute if score #rv_sc temp matches 100 run fill 961 199 3276 973 199 3288 minecraft:air destroy
execute if score #rv_sc temp matches 100 run fill 948 199 3309 960 199 3321 minecraft:air destroy
execute if score #rv_sc temp matches 100 run fill 915 199 3322 927 199 3334 minecraft:air destroy
execute if score #rv_sc temp matches 100 run fill 882 199 3309 894 199 3321 minecraft:air destroy
execute if score #rv_sc temp matches 100 run fill 869 199 3276 881 199 3288 minecraft:air destroy
execute if score #rv_sc temp matches 100 run fill 882 199 3243 894 199 3255 minecraft:air destroy
execute if score #rv_sc temp matches 105 run fill 915 198 3230 927 198 3242 minecraft:air destroy
execute if score #rv_sc temp matches 105 run fill 948 198 3243 960 198 3255 minecraft:air destroy
execute if score #rv_sc temp matches 105 run fill 961 198 3276 973 198 3288 minecraft:air destroy
execute if score #rv_sc temp matches 105 run fill 948 198 3309 960 198 3321 minecraft:air destroy
execute if score #rv_sc temp matches 105 run fill 915 198 3322 927 198 3334 minecraft:air destroy
execute if score #rv_sc temp matches 105 run fill 882 198 3309 894 198 3321 minecraft:air destroy
execute if score #rv_sc temp matches 105 run fill 869 198 3276 881 198 3288 minecraft:air destroy
execute if score #rv_sc temp matches 105 run fill 882 198 3243 894 198 3255 minecraft:air destroy
execute if score #rv_sc temp matches 110 run fill 915 194 3230 927 197 3242 minecraft:air destroy
execute if score #rv_sc temp matches 110 run fill 948 194 3243 960 197 3255 minecraft:air destroy
execute if score #rv_sc temp matches 110 run fill 961 194 3276 973 197 3288 minecraft:air destroy
execute if score #rv_sc temp matches 110 run fill 948 194 3309 960 197 3321 minecraft:air destroy
execute if score #rv_sc temp matches 110 run fill 915 194 3322 927 197 3334 minecraft:air destroy
execute if score #rv_sc temp matches 110 run fill 882 194 3309 894 197 3321 minecraft:air destroy
execute if score #rv_sc temp matches 110 run fill 869 194 3276 881 197 3288 minecraft:air destroy
execute if score #rv_sc temp matches 110 run fill 882 194 3243 894 197 3255 minecraft:air destroy
execute if score #rv_sc temp matches 100 run particle minecraft:explosion_emitter 921.5 198 3236.5 2 1 2 0 2 force @a[distance=..160]
execute if score #rv_sc temp matches 100 run particle minecraft:explosion_emitter 954.5 198 3249.5 2 1 2 0 2 force @a[distance=..160]
execute if score #rv_sc temp matches 100 run particle minecraft:explosion_emitter 967.5 198 3282.5 2 1 2 0 2 force @a[distance=..160]
execute if score #rv_sc temp matches 100 run particle minecraft:explosion_emitter 954.5 198 3315.5 2 1 2 0 2 force @a[distance=..160]
execute if score #rv_sc temp matches 100 run particle minecraft:explosion_emitter 921.5 198 3328.5 2 1 2 0 2 force @a[distance=..160]
execute if score #rv_sc temp matches 100 run particle minecraft:explosion_emitter 888.5 198 3315.5 2 1 2 0 2 force @a[distance=..160]
execute if score #rv_sc temp matches 100 run particle minecraft:explosion_emitter 875.5 198 3282.5 2 1 2 0 2 force @a[distance=..160]
execute if score #rv_sc temp matches 100 run particle minecraft:explosion_emitter 888.5 198 3249.5 2 1 2 0 2 force @a[distance=..160]
execute if score #rv_sc temp matches 100 positioned 921.5 199 3282.5 run playsound minecraft:entity.generic.explode hostile @a[distance=..160] ~ ~ ~ 4 0.4
execute if score #rv_sc temp matches 100 positioned 921.5 199 3282.5 run playsound minecraft:entity.warden.roar hostile @a[distance=..160] ~ ~ ~ 3 0.6
# おわり
execute if score #rv_sc temp matches 130 run tellraw @a[distance=..160] {"text":"小島は夜空の底へ沈んでいった。残ったのは、真ん中の白い円盤だけ。もう、身を隠す所はない。","color":"gray","italic":true}
execute if score #rv_sc temp matches 130.. run data modify storage neofunction:rubra fin.sc set value 0
