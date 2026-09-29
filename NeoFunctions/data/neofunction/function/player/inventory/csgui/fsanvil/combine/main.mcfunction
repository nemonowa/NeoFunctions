# 命名：main
# 説明：カスタムインベントリーGUI
# 説明：金床をクリックして合成する
# >/function neofunction:player/inventory/csgui/fsanvil/tick
# =/function neofunction:player/inventory/csgui/fsanvil/combine/main

# 内容

##異物が入った場合返品
function neofunction:player/inventory/csgui/fsanvil/return {num:"14"}

##条件
execute store result score sharp temp run data get entity @s Items[{Slot:10b}].components."minecraft:custom_data".sharp
execute store result score value temp run data get entity @s Items[{Slot:12b}].components."minecraft:custom_data".value
##sharp>valueであれば処理開始
###見やすさのためにexecute二重
tag @s add short
execute if score sharp temp < value temp run return run execute if entity @p run function neofunction:player/inventory/csgui/fsanvil/update {item:"minecraft:pink_stained_glass_pane{GuiItem:true}"}
tag @s remove short
tag @s remove nopay
##お金処理
execute unless function neofunction:player/inventory/csgui/fsanvil/recipe/base run return run function neofunction:player/inventory/csgui/fsanvil/update {item:"minecraft:pink_stained_glass_pane{GuiItem:true}"}
tag @s remove nopay

##設定
##二つ名
data modify storage neofunction:gui Anvil.status.name set from entity @s Items[{Slot:12b}].components."minecraft:custom_data".name

##合成処理
function neofunction:player/inventory/csgui/fsanvil/combine/generate
data remove entity @s Items[{Slot:10b}]
execute store result entity @s Items[{Slot:12b}].count int 0.9999999 run data get entity @s Items[{Slot:12b}].count 1

##演出
tellraw @p "合成！"
execute at @s run playsound minecraft:block.anvil.use block @a[distance=..8] ~ ~ ~ 2 0.75

##init処理
execute if entity @p run function neofunction:player/inventory/csgui/fsanvil/update {item:"minecraft:pink_stained_glass_pane{GuiItem:true}"}
execute as @p[tag=reset] run tag @s remove reset
scoreboard players reset sharp temp
scoreboard players reset value temp
scoreboard players reset money1 temp
scoreboard players reset money2 temp
scoreboard players reset money3 temp