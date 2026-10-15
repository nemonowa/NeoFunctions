# 命名：fvalve
# 説明：壁画の間の黒い水の水門（二つ）を右クリックしたとき：その水門を 12 秒開ける（開いている間は上のガラスの柱が濃い青）。両方が同時に開いていると、澄んだ水が黒い水を押し流す（fvalve_tick → flush）
# 説明：番人の間の水門と同じ見た目・同じ遊び方の練習。何人いても進み方は同じ
# 実行条件：実行者 プレイヤー（クリックされた interaction にタグ rubra_clicked）
# >/function neofunction:system/adv/player_interacted_with_entity/rubra_click
# =/function neofunction:system/rubra/d2/fvalve

# 内容
execute if data storage neofunction:rubra d2{flushed:1b} run return run tellraw @s {"text":"水門は開いたまま。澄んだ水が、細く流れ続けている。","color":"gray","italic":true}
execute store result score #fv_now temp run time query gametime
scoreboard players add #fv_now temp 240
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_fvalve_1] store result storage neofunction:rubra d2.fv.a int 1 run scoreboard players get #fv_now temp
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_fvalve_2] store result storage neofunction:rubra d2.fv.b int 1 run scoreboard players get #fv_now temp
execute as @e[type=interaction,tag=rubra_clicked,tag=rubra_fvalve] at @s run fill ~ ~1 ~ ~ ~4 ~ minecraft:blue_stained_glass replace minecraft:light_blue_stained_glass
playsound minecraft:block.grindstone.use block @a[distance=..32] ~ ~ ~ 1.5 0.6
playsound minecraft:block.water.ambient block @a[distance=..32] ~ ~ ~ 2 1.0
# 初めて開けたときだけ、ミラが仕組みを口にする
execute if data storage neofunction:rubra d2{fvmsg:1b} run return 0
data modify storage neofunction:rubra d2.fvmsg set value 1b
tellraw @a[distance=..32] [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「水が流れはじめた……でも、すぐ閉じちゃいそう。旅人さん、反対の端にも水門が！　柱が青いうちに、両方開けないと」"}]
