# 命名：compass
# 説明：ワールドセッティング
# >execute as @e[type=minecraft:item_frame,limit=1,sort=nearest,distance=..8] at @s run function neofunction:system/pos/compass with storage pos:8
# =/function neofunction:system/pos/compass



## 内容
# 【変更：2026-09-27 26.3対応】give の代わりにアイテムを出し、名前(CustomName由来のテキストデータ)と座標を型のまま写してすぐ拾わせる（名前はマクロの '…' に埋め込めなくなり、座標は小数のため int 配列へ整数化して写す）。タグ check/vanilla でアイテムのスポーン処理を通さない（give と同じ状態にする）
$summon item ~ ~ ~ {Tags:["check","vanilla","pos_compass"],PickupDelay:0s,Item:{id:"minecraft:compass",count:1,components:{"minecraft:can_place_on":[{blocks:"minecraft:lodestone"}],"minecraft:unbreakable":{},"minecraft:lore":[[{"keybind":"key.drop","color":"white","bold":true,"italic":false},{"text":" > ","color":"dark_gray","bold":false,"italic":false},{"text":"兵装変形および情報更新","color":"white","bold":false,"italic":false}],[{"keybind":"key.advancements","color":"white","bold":true,"italic":false},{"text":" > ","color":"dark_gray","bold":false,"italic":false},{"text":"カスタム進捗画面を開く","color":"white","bold":false,"italic":false}],[{"keybind":"key.playerlist","color":"white","bold":true,"italic":false},{"text":" > ","color":"dark_gray","bold":false,"italic":false},{"text":"現在のレベルを確認","color":"white","bold":false,"italic":false}],[{"keybind":"key.sneak","color":"white","bold":true,"italic":false},{"text":" > ","color":"dark_gray","bold":false,"italic":false},{"text":"座標の転移","color":"white","bold":false,"italic":false}],{"text":"その針は北を指さない。目指すべく在処のみを指し示す。","color":"light_purple"},{"text":"⌖ 追跡座標：","italic":false,"color":"white"},{"text":"X: $(x), Y: $(y), Z: $(z)","italic":false,"color":"white"}],"minecraft:lodestone_tracker":{target:{pos:[I;0,0,0],dimension:"$(dimension)"},tracked:false},"minecraft:custom_data":{rare:["st"]}}}}
data modify entity @e[type=item,tag=pos_compass,limit=1,sort=nearest] Item.components."minecraft:custom_name" set from storage neofunction:pos_compass data.name
execute store result entity @e[type=item,tag=pos_compass,limit=1,sort=nearest] Item.components."minecraft:lodestone_tracker".target.pos[0] int 1 run data get storage neofunction:pos_compass data.x
execute store result entity @e[type=item,tag=pos_compass,limit=1,sort=nearest] Item.components."minecraft:lodestone_tracker".target.pos[1] int 1 run data get storage neofunction:pos_compass data.y
execute store result entity @e[type=item,tag=pos_compass,limit=1,sort=nearest] Item.components."minecraft:lodestone_tracker".target.pos[2] int 1 run data get storage neofunction:pos_compass data.z
tag @e[type=item,tag=pos_compass] remove pos_compass



# 【変更：2026-09-29 26.3対応】名前を $(name) で埋め込むと、飾りの無い名前（26.3 ではただの文字）の時に命令文として読めず関数全体が失敗するため、コピー済みの neofunction:pos_compass data.name を文章として読む（ユーザーの判断）
tellraw @p ["",{"text":"追跡するポスアンカーを"},{"nbt":"data.name","storage":"neofunction:pos_compass","interpret":true},{"text":"に更新しました。"}]


# 旧処理
# execute summon 実装時に無理やり有効活用しようとして編み出したコマンド
# $data modify entity @s Item merge value {id: "minecraft:compass", count: 1, components: {"minecraft:can_place_on":[{blocks:"minecraft:lodestone"}],"minecraft:unbreakable":{},"minecraft:lore":[[{"keybind":"key.drop","color":"white","bold":true,"italic":false},{"text":" > ","color":"dark_gray","bold":false,"italic":false},{"text":"兵装変形および情報更新","color":"white","bold":false,"italic":false}],[{"keybind":"key.advancements","color":"white","bold":true,"italic":false},{"text":" > ","color":"dark_gray","bold":false,"italic":false},{"text":"カスタム進捗画面を開く","color":"white","bold":false,"italic":false}],[{"keybind":"key.playerlist","color":"white","bold":true,"italic":false},{"text":" > ","color":"dark_gray","bold":false,"italic":false},{"text":"現在のレベルを確認","color":"white","bold":false,"italic":false}],[{"keybind":"key.sneak","color":"white","bold":true,"italic":false},{"text":" > ","color":"dark_gray","bold":false,"italic":false},{"text":"座標の転移","color":"white","bold":false,"italic":false}],{"text":"その針は北を指さない。目指すべく在処のみを指し示す。","color":"light_purple"},{"text":"⌖ 追跡座標：","italic":false,"color":"white"},{"text":"X: $(x), Y: $(y), Z: $(z)","italic":false,"color":"white"}],"minecraft:custom_name":'$(name)',"minecraft:lodestone_tracker":{target:{pos:[I;$(x),$(y),$(z)],dimension:"$(dimension)"}},"minecraft:custom_data":{rare:["st"]}}}