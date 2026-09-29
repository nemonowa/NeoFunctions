# 命名：elemental
# 説明：水元素の司教試練
# 実行条件：保護が起動されてる場合
# >/neofunction:tick/.neo
# =/function neofunction:system/adv/location/ceresta/soul2

# 内容：司教保護の中身
#司教が外に行ったら、再生を与えてログを流し定位置に
kill @e[type=minecraft:small_fireball,distance=32..64]
execute unless entity @e[type=minecraft:silverfish,tag=water,distance=..32] run effect give @e[tag=elite,distance=..32] minecraft:regeneration 9 9 false
execute unless entity @e[type=minecraft:silverfish,tag=water,distance=..32] run tellraw @a[distance=..64] "司祭は祭壇に戻った！"
execute unless entity @e[type=minecraft:silverfish,tag=water,distance=..32] run execute in neodimension:ceresta_festa run tp @e[nbt={DeathLootTable:"neofunction:asset/summon/666"},type=minecraft:silverfish] 1026 45 1911

#ここから下はプレイヤーがエリア外に出た時の失敗処理
execute if entity @a[distance=..64,predicate=neofunction:player] run return 0
# 読み込みチェック
execute unless loaded ~32 ~ ~ run return 0
execute unless loaded ~-32 ~ ~ run return 0
execute unless loaded ~ ~ ~32 run return 0
execute unless loaded ~ ~ ~-32 run return 0
execute unless loaded ~32 ~ ~32 run return 0
execute unless loaded ~32 ~ ~-32 run return 0
execute unless loaded ~-32 ~ ~32 run return 0
execute unless loaded ~-32 ~ ~-32 run return 0
#ガラスを再設置します。
setblock 1026 45 1908 minecraft:light_blue_stained_glass
setblock 1023 44 1911 minecraft:light_blue_stained_glass
setblock 1026 44 1914 minecraft:light_blue_stained_glass
setblock 1029 44 1911 minecraft:light_blue_stained_glass
setblock 1026 44 1908 minecraft:light_blue_stained_glass

#通知
tellraw @a "討伐失敗：アンカーから64m以上離れました。"
#対象の敵をエリアから削除
tag @e[tag=water,distance=..64] add del
#対象のエリア内からスポナーを削除
kill @e[type=minecraft:spawner_minecart,distance=..40]
#中心のスポナーを削除
setblock 1026 43 1911 spawner
#花火スポナー設置
summon armor_stand 1026 43 1911 {CustomName:{"text":"ノーチラス位相鋲","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},CustomNameVisible:0b,Team:"dark_blue",NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["air"],Pose:{Head:[180f,0f,0f]},Passengers:[{id:"minecraft:spawner_minecart",Silent:1b,Invulnerable:1b,CustomNameVisible:0b,CustomDisplayTile:1b,CustomName:{"text":"高次擬態性増殖体","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},DisplayState:{id:"minecraft:air"},SpawnData:{entity:{id:"minecraft:item",Item:{id:"minecraft:paper",count:1,NoGravity:1b,PickupDelay:-1s,Age:5900,Invulnerable:1b,components:{"minecraft:custom_name":{"text":"SummonScroll"},"minecraft:custom_data":{summon:112}}}}},SpawnCount:1,SpawnRange:8,Delay:0s,MinSpawnDelay:32000s,MaxSpawnDelay:32000s,RequiredPlayerRange:1}],equipment:{head:{id:"minecraft:spawner",count:1}}}
#RSをラピスに変更
setblock 1026 41 1911 minecraft:lapis_block


