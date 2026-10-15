# 命名：valve
# 説明：番人の間の壁ぎわの水門（広間を広げ、柱の上から壁ぎわの床へ）を右クリックしたとき：その水門を 30 秒（600 tick）開ける。開いた水門から番人へ澄んだ水が流れる
# 実行条件：実行者 プレイヤー（クリックされた interaction にタグ rubra_clicked が付いている）
# >/function neofunction:system/adv/player_interacted_with_entity/rubra_click
# =/function neofunction:entity/skill/boss/rubra_keeper/valve

# 内容
execute unless data storage neofunction:rubra keeper{state:"fight"} run return run tellraw @s {"text":"錆びた青銅の水門。今は回しても何も起きない。","color":"gray","italic":true}
execute unless data storage neofunction:rubra keeper{wash:0} run return run title @s actionbar {"text":"番人は洗われている。今のうちに攻撃を！","color":"#7FD8FF"}
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_kvalve_1] run data modify storage neofunction:rubra d2.kopen.v1 set value 600
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_kvalve_2] run data modify storage neofunction:rubra d2.kopen.v2 set value 600
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_kvalve_3] run data modify storage neofunction:rubra d2.kopen.v3 set value 600
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_kvalve_4] run data modify storage neofunction:rubra d2.kopen.v4 set value 600
# 開いた水門は、上のガラスの柱を濃い青に（閉じると水色に戻る）
execute as @e[type=interaction,tag=rubra_clicked,tag=rubra_kvalve] at @s run fill ~ ~1 ~ ~ ~4 ~ minecraft:blue_stained_glass replace minecraft:light_blue_stained_glass
playsound minecraft:block.grindstone.use block @a[distance=..32] ~ ~ ~ 1.5 0.6
playsound minecraft:block.water.ambient block @a[distance=..32] ~ ~ ~ 2 1.0
