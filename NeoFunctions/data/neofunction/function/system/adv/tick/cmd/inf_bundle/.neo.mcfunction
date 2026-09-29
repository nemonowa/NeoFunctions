# 命名：.neo
# 説明：
# >/function neofunction:system/adv/tick/cmd/1585
# =/function neofunction:system/adv/tick/cmd/inf_bundle/.neo

execute if data entity @s SelectedItem.components."minecraft:bundle_contents"[0] run return 0
# アイテムをデータにする
data modify storage neofunction:inf_bundle Item set from entity @s SelectedItem
execute store result score #Calc1 temp run data get storage neofunction:inf_bundle Item.components."minecraft:custom_data".Count

# 収納するアイテムをデータにする
summon item_display ~ ~ ~ {Tags:["resolve","del"],view_range:0}
$loot replace entity @e[tag=resolve,limit=1,sort=nearest] container.0 loot neofunction:item/$(CMD)
summon item ~ ~100 ~ {Item:{id:"structure_block",count:1},PickupDelay:32767s,Tags:["del","getCheck"]}
data modify entity @e[tag=getCheck,limit=1,sort=nearest] Item set from entity @e[tag=resolve,limit=1,sort=nearest] item
execute as @e[tag=getCheck] at @s run function neofunction:entity/.spawn/obj/item/rare
data modify entity @e[tag=resolve,limit=1,sort=nearest] item set from entity @e[tag=getCheck,limit=1,sort=nearest] Item
kill @e[tag=getCheck]
data modify storage neofunction:inf_bundle CMD set from entity @e[tag=resolve,limit=1,sort=nearest] item

# ループでアイテムを追加する
execute if score #Calc1 temp matches 1.. run function neofunction:system/adv/inventory_changed/inf_bundle/loop

# アイテムを消す
data modify storage neofunction:inf_bundle Item.components."minecraft:custom_data".Count set value 0
# 【変更：2026-09-28 26.3対応】名前・説明文・文字表示の中身は 1.21.5 から JSON の文字列ではなく文章の部品として読まれる。文字列のままだと {"text":…} がそのまま表示されるため、部品の形（引用符なし）に直す
data modify storage neofunction:inf_bundle Item.components."minecraft:lore"[-1] set value {"text":"0/5120","color":"gray","italic":false}

# アイテムを返す
data modify entity @e[tag=resolve,limit=1,sort=nearest] item set from storage neofunction:inf_bundle Item
item replace entity @s weapon.mainhand from entity @e[tag=resolve,limit=1,sort=nearest] container.0

kill @e[tag=resolve,limit=1,sort=nearest]
