# 命名：skylantern_tick
# 説明：【追加：2026-10-13 ルブラ編】昇る灯籠（毎 tick、t を数える）：0〜239 のあいだ広場の灯籠の目印から灯籠を放つ（たくさん＝0.2 秒ごとに 2 つ、まばら＝1 秒ごとに 1 つ）。灯籠はゆっくり回りながら昇り、y150 で消える。全部消えたら終わり
# 実行条件：schedule（skylantern_start から、毎 tick）
# >/function neofunction:system/rubra/fin/skylantern_start
# =/function neofunction:system/rubra/fin/skylantern_tick

# 内容
execute store result score #sl_t temp run data get storage neofunction:rubra skyl.t
scoreboard players add #sl_t temp 1
execute store result storage neofunction:rubra skyl.t int 1 run scoreboard players get #sl_t temp
scoreboard players operation #sl_m temp = #sl_t temp
scoreboard players operation #sl_m temp %= $4 const
execute if score #sl_t temp matches ..239 if score #sl_m temp matches 0 if data storage neofunction:rubra skyl{many:1b} in neodimension:ceresta_festa run function neofunction:system/rubra/fin/skylantern_one
execute if score #sl_t temp matches ..239 if score #sl_m temp matches 0 if data storage neofunction:rubra skyl{many:1b} in neodimension:ceresta_festa run function neofunction:system/rubra/fin/skylantern_one
scoreboard players operation #sl_m temp = #sl_t temp
scoreboard players operation #sl_m temp %= $20 const
execute if score #sl_t temp matches ..239 if score #sl_m temp matches 0 if data storage neofunction:rubra skyl{many:0b} in neodimension:ceresta_festa run function neofunction:system/rubra/fin/skylantern_one
# 昇る（少しずつ回りながら。火の粉は 4 tick ごと）
scoreboard players operation #sl_m temp = #sl_t temp
scoreboard players operation #sl_m temp %= $4 const
execute in neodimension:ceresta_festa as @e[type=item_display,tag=rubra_skyl] at @s run function neofunction:system/rubra/fin/skylantern_move
# 続ける・終わる
execute if score #sl_t temp matches ..239 run return run schedule function neofunction:system/rubra/fin/skylantern_tick 1t replace
execute in neodimension:ceresta_festa if entity @e[type=item_display,tag=rubra_skyl] run return run schedule function neofunction:system/rubra/fin/skylantern_tick 1t replace
data remove storage neofunction:rubra skyl
