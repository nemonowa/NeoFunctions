# 命名：turn
# 説明：【追加：2026-10-08 ルブラ編】置いた欠片の光の向きを変える（1→2→3→1）
# 実行条件：実行者 プレイヤー。引数 p
# >/function neofunction:system/rubra/d1/ped/click
# =/function neofunction:system/rubra/d1/ped/turn

# 内容
$execute store result score #rubra_p temp run data get storage neofunction:rubra d1.ped.$(p)
scoreboard players add #rubra_p temp 1
execute if score #rubra_p temp matches 4.. run scoreboard players set #rubra_p temp 1
$execute store result storage neofunction:rubra d1.ped.$(p) int 1 run scoreboard players get #rubra_p temp
$execute as @e[type=item_display,tag=rubra_ped_disp_$(p)] at @s run tp @s ~ ~ ~ ~120 ~
playsound minecraft:block.stone_button.click_on block @a[distance=..16] ~ ~ ~ 1 0.6
function neofunction:system/rubra/d1/ped/apply
