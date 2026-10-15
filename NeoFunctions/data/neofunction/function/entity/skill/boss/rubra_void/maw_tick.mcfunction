# 命名：maw_tick
# 説明：顎が開いているあいだ（毎 tick、ot を数える。15 秒＝300）：体力のスコア（HP）で次のフェーズへ。12 秒からは顎が震えて閉じかける。300 で閉じて、同じフェーズの心臓がまた浮かぶ（maw_close）
# 実行条件：実行者・実行位置 本体（第 3 形態、顎が開いている）
# >/function neofunction:entity/skill/boss/rubra_void/form3
# =/function neofunction:entity/skill/boss/rubra_void/maw_tick

# 内容
particle minecraft:dust{color:[1.0,0.35,0.25],scale:2.0} ~ ~ ~ 2 2 2 0 8 force @a[distance=..128]
# 削れたら次へ
execute if data storage neofunction:rubra fin{hp3:3} if score @s HP matches ..60 run return run function neofunction:entity/skill/boss/rubra_void/ult_start
execute if data storage neofunction:rubra fin{hp3:2} if score @s HP matches ..100 run return run function neofunction:entity/skill/boss/rubra_void/maw_next
execute if data storage neofunction:rubra fin{hp3:1} if score @s HP matches ..200 run return run function neofunction:entity/skill/boss/rubra_void/maw_next
# 時間
execute store result score #rv_ot temp run data get storage neofunction:rubra fin.ot
scoreboard players add #rv_ot temp 1
execute store result storage neofunction:rubra fin.ot int 1 run scoreboard players get #rv_ot temp
scoreboard players operation #rv_m temp = #rv_ot temp
scoreboard players operation #rv_m temp %= $10 const
execute if score #rv_ot temp matches 240.. if score #rv_m temp matches 0 run playsound minecraft:block.iron_door.close hostile @a[distance=..160] ~ ~ ~ 2 1.6
execute if score #rv_ot temp matches 240.. if score #rv_m temp matches 0 run particle minecraft:squid_ink ~ ~ ~ 5 1 5 0.05 40 force @a[distance=..160]
execute if score #rv_ot temp matches 240.. if score #rv_m temp matches 0 as @e[type=block_display,tag=rubra_maw_up] at @s run tp @s ~ ~-0.5 ~
execute if score #rv_ot temp matches 240.. if score #rv_m temp matches 0 as @e[type=block_display,tag=rubra_maw_down] at @s run tp @s ~ ~0.5 ~
execute if score #rv_ot temp matches 300.. run function neofunction:entity/skill/boss/rubra_void/maw_close
