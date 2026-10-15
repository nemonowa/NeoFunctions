# 命名：child_tick
# 説明：星の子を守る戦い（毎 tick）：10 秒ごとに黒い滴りが 4 体、まわりから這い寄る。星の子のそばの滴りが光を削る。光が尽きたらやり直し、60 秒守りきったら結末 C
# 実行条件：実行者・実行位置 星の子（allay、タグ rubra_child）
# >/function neofunction:entity/skill/boss/.neo
# =/function neofunction:entity/skill/boss/rubra_void/child_tick

# 内容
execute unless score #temp main_story matches 447 run return 0
execute store result score #rc_t temp run data get storage neofunction:rubra fin.child.t
scoreboard players add #rc_t temp 1
execute store result storage neofunction:rubra fin.child.t int 1 run scoreboard players get #rc_t temp
execute if score #rc_t temp matches 1200.. run return run function neofunction:entity/skill/boss/rubra_void/child_win
# 10 秒ごとに 4 体（最初は 1 秒後）
execute if score #rc_t temp matches 20 run function neofunction:entity/skill/boss/rubra_void/child_wave
execute if score #rc_t temp matches 220 run function neofunction:entity/skill/boss/rubra_void/child_wave
execute if score #rc_t temp matches 420 run function neofunction:entity/skill/boss/rubra_void/child_wave
execute if score #rc_t temp matches 620 run function neofunction:entity/skill/boss/rubra_void/child_wave
execute if score #rc_t temp matches 820 run function neofunction:entity/skill/boss/rubra_void/child_wave
execute if score #rc_t temp matches 1020 run function neofunction:entity/skill/boss/rubra_void/child_wave
# 滴りが星の子へ這い寄る
execute as @e[type=zombie,tag=rubra_fin_drip,distance=..30] at @s facing entity @e[type=allay,tag=rubra_child,limit=1] feet run tp @s ^ ^ ^0.07
# 光が削られる
execute store result score #rc_n temp if entity @e[type=zombie,tag=rubra_fin_drip,distance=..2]
execute store result score #rc_g temp run data get storage neofunction:rubra fin.child.g
scoreboard players operation #rc_m temp = #rc_t temp
scoreboard players operation #rc_m temp %= $10 const
execute if score #rc_m temp matches 0 run scoreboard players operation #rc_g temp -= #rc_n temp
execute store result storage neofunction:rubra fin.child.g int 1 run scoreboard players get #rc_g temp
execute if score #rc_n temp matches 1.. run particle minecraft:squid_ink ~ ~0.5 ~ 0.3 0.3 0.3 0.02 4 normal
particle minecraft:dust{color:[1.0,0.5,0.5],scale:1.0} ~ ~0.3 ~ 0.3 0.3 0.3 0 2 normal
execute if score #rc_g temp matches ..0 run return run function neofunction:entity/skill/boss/rubra_void/child_fail
# 画面（0.5 秒ごと）
scoreboard players set #rc_s temp 1200
scoreboard players operation #rc_s temp -= #rc_t temp
scoreboard players operation #rc_s temp /= $20 const
execute if score #rc_m temp matches 0 run title @a[distance=..40] actionbar [{"text":"星の子の光 ","color":"#FF8C8C"},{"score":{"name":"#rc_g","objective":"temp"},"color":"white","bold":true},{"text":" / 100　","color":"#FF8C8C"},{"text":"夜明けまで ","color":"gray"},{"score":{"name":"#rc_s","objective":"temp"},"color":"white"},{"text":" 秒","color":"gray"}]
