# 命名：.neo
# 説明：（説明未記載）
# >adv 1717slot
# =/function neofunction:system/adv/tick/cmd/1717/run/.neo

# バンドルの中身を取得
data modify storage neofunction:item/1717 Run.Items set from entity @s Inventory[{Slot:17b}].components."minecraft:bundle_contents"
data modify storage neofunction:item/1717 Run.Base set value []
# 中身を命令に変換
function neofunction:system/adv/tick/cmd/1717/run/load
# 変数を取得
data modify storage neofunction:item/1717 Run.Var set value {}
execute if data entity @s Inventory[{Slot:17b}].components."minecraft:custom_data".Var run data modify storage neofunction:item/1717 Run.Var set from entity @s Inventory[{Slot:17b}].components."minecraft:custom_data".Var

# 実行中命令を準備
data modify storage neofunction:item/1717 Run.Command set from storage neofunction:item/1717 Run.Base
# エラー用カウンタ
scoreboard players set #Counter temp 1
# 無限ループ防止
scoreboard players set #GotoCount temp 0

# 実行！
function neofunction:system/adv/tick/cmd/1717/run/main/function

# 変数保存
summon item_display ~ ~ ~ {Tags:["resolve","del"],view_range:0}
item replace entity @e[tag=resolve,limit=1,sort=nearest] container.0 from entity @s inventory.8
data modify entity @e[tag=resolve,limit=1,sort=nearest] item.components."minecraft:custom_data".Var set from storage neofunction:item/1717 Run.Var
item replace entity @s inventory.8 from entity @e[tag=resolve,limit=1,sort=nearest] container.0