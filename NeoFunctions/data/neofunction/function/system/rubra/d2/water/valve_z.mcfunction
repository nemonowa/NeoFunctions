# 命名：valve_z
# 説明：【追加：2026-10-09 ルブラ編】入口の広間の青銅の輪（練習用）：柱の水を 0→1→2→0 と変える。2 で扉が開く
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/adv/player_interacted_with_entity/rubra_click
# =/function neofunction:system/rubra/d2/water/valve_z

# 内容
execute store result score #r2_v temp run data get storage neofunction:rubra d2.lv.z
scoreboard players add #r2_v temp 1
execute if score #r2_v temp matches 3.. run scoreboard players set #r2_v temp 0
execute store result storage neofunction:rubra d2.lv.z int 1 run scoreboard players get #r2_v temp
playsound minecraft:block.grindstone.use block @a[distance=..24] ~ ~ ~ 1 0.6
playsound minecraft:block.water.ambient block @a[distance=..24] ~ ~ ~ 1.5 0.8
function neofunction:system/rubra/d2/water/apply
execute if score #r2_v temp matches 2 run title @s actionbar {"text":"柱の水が、扉の印の線に届いた。","color":"#7FD8FF"}
execute if score #r2_v temp matches 0..1 run title @s actionbar [{"text":"柱の水：","color":"#7FD8FF"},{"score":{"name":"#r2_v","objective":"temp"}},{"text":" / 扉の印の線 2","color":"gray"}]
