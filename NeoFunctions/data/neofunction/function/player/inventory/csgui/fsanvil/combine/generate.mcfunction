# 命名：generate
# 説明：合成アイテムを出力
# >/function neofunction:player/inventory/csgui/fsanvil/combine/main
# =/function neofunction:player/inventory/csgui/fsanvil/combine/generate

# 内容
item replace entity @s container.16 from entity @s container.10 neofunction:csgui/anvil/copy_nbt

##attributeがない場合初期attributeを割り振り
execute unless data entity @s Items[{Slot:10b}].components."minecraft:attribute_modifiers" run function neofunction:player/inventory/csgui/fsanvil/combine/baseattribute

##reforge
execute if data entity @s Items[{Slot:12b,components:{"minecraft:custom_data":{name:"inferior"}}}] run function neofunction:player/inventory/csgui/fsanvil/recipe/power

##reforge外を置き換え
function neofunction:player/inventory/csgui/fsanvil/combine/undefined

##merge
data modify storage neofunction:gui Anvil.status.attributes set value []
execute if data storage neofunction:gui Anvil.status.atk run data modify storage neofunction:gui Anvil.status.attributes append from storage neofunction:gui Anvil.status.atk
execute if data storage neofunction:gui Anvil.status.ats run data modify storage neofunction:gui Anvil.status.attributes append from storage neofunction:gui Anvil.status.ats
execute if data storage neofunction:gui Anvil.status.hp run data modify storage neofunction:gui Anvil.status.attributes append from storage neofunction:gui Anvil.status.hp
execute if data storage neofunction:gui Anvil.status.kbdef run data modify storage neofunction:gui Anvil.status.attributes append from storage neofunction:gui Anvil.status.kbdef
execute if data storage neofunction:gui Anvil.status.spd run data modify storage neofunction:gui Anvil.status.attributes append from storage neofunction:gui Anvil.status.spd
execute if data storage neofunction:gui Anvil.status.def run data modify storage neofunction:gui Anvil.status.attributes append from storage neofunction:gui Anvil.status.def
execute if data storage neofunction:gui Anvil.status.tough run data modify storage neofunction:gui Anvil.status.attributes append from storage neofunction:gui Anvil.status.tough
execute if data storage neofunction:gui Anvil.status.luck run data modify storage neofunction:gui Anvil.status.attributes append from storage neofunction:gui Anvil.status.luck
execute if data storage neofunction:gui Anvil.status.abs run data modify storage neofunction:gui Anvil.status.attributes append from storage neofunction:gui Anvil.status.abs
###本来必要ないが装飾用
execute if data storage neofunction:gui Anvil.status.range run data modify storage neofunction:gui Anvil.status.attributes append from storage neofunction:gui Anvil.status.range

data modify storage neofunction:gui Anvil.status.atk set value {}
data modify storage neofunction:gui Anvil.status.ats set value {}
data modify storage neofunction:gui Anvil.status.hp set value {}
data modify storage neofunction:gui Anvil.status.kbdef set value {}
data modify storage neofunction:gui Anvil.status.spd set value {}
data modify storage neofunction:gui Anvil.status.def set value {}
data modify storage neofunction:gui Anvil.status.tough set value {}
data modify storage neofunction:gui Anvil.status.luck set value {}
data modify storage neofunction:gui Anvil.status.abs set value {}
data modify storage neofunction:gui Anvil.status.range set value {}

##適用
# 【変更：2026-09-27 26.3対応】ストレージからアイテムの属性へ写すアイテム修飾子(copy_nbt)は 26.3 に存在しないため、コンテナのアイテムへ直接 data modify で書き込む（結果は同じ）
data modify entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers" set from storage neofunction:gui Anvil.status.attributes

