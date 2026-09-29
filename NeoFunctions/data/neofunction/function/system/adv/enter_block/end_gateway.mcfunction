# 命名：end_gateway
# 説明：NEXUSテレポート共通処理
# 説明：end_gatewayに入ったとき
# >/function neofunction:consume_item/.all
# =/function neofunction:system/adv/enter_block/end_gateway

# 内容
execute if biome ~ ~ ~ neodimension:cerestafesta/village run advancement revoke @s only neofunction:location/biome_change/cerestafesta/village
#execute if entity @s unless dimension neodimension:nexus run return 0

execute if entity @s run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:redstone_block replace minecraft:lapis_block

# 転移共通処理
# title @s subtitle [{"text":"||","color":"blue","bold":true,"italic":false,"obfuscated":true},{"text":"||","color":"dark_aqua"},{"text":"||","color":"blue"},{"text":" teleporting ","color":"aqua","obfuscated":false},{"text":"||","color":"blue"},{"text":"||","color":"dark_aqua"},{"text":"||","color":"blue"}]
# title @s title ""

# 転移共通処理
# playsound minecraft:ambient.underwater.enter master @s ~ ~ ~ 1 0.3 1
execute if dimension neodimension:nexus run effect give @s minecraft:blindness 2 0 true
execute if dimension neodimension:nexus run effect give @s minecraft:slow_falling 3 0 true

## 特定座標なら
execute as @s[x=1273,y=129,z=1273,dx=2,dy=3,dz=2] run tag @s add tpspawnlocation
execute as @s[x=1284,y=129,z=1273,dx=2,dy=3,dz=2] run function neofunction:system/pos/.macro with storage pos:52
execute as @s[x=1273,y=129,z=1284,dx=2,dy=3,dz=2] run tag @s add tppalaceofceresta
execute as @s[x=1284,y=129,z=1284,dx=2,dy=3,dz=2] run tag @s add tpsneakplayer
execute as @s[x=1284,y=129,z=1284,dx=2,dy=3,dz=2] run execute unless entity @a[scores={sneak_time=1..},limit=1,sort=furthest,predicate=neofunction:player] run tellraw @s "失敗：転移先なし"
#ヴァレリカ
execute in neodimension:ceresta_festa as @s[x=640,y=3,z=1415,dx=0,dy=2,dz=1] run function neofunction:entity/skill/boss/valerica/inportal
#サラザール
execute if biome ~ ~ ~ neodimension:cerestafesta/skull run function neofunction:system/world/ceresta/skull/inportal
# おのもや案件：トリガーtick以外のadvancement起点で叩かれたディメンションを跨ぐtpが死ぬ(ことがある）ちゃんと動くときもある
# の解決のため次のtickにスケジュール

# execute if entity @s消すな！！！！！！！！！！！
execute if entity @s run return run schedule function neofunction:system/adv/enter_block/end_gateway 1t append

#スポーン地点へ
execute as @a[tag=tpspawnlocation] at @s run function neofunction:system/pos/spawn_location
#セレスタディメンションへ
execute as @a[tag=tppalaceofceresta] at @s run trigger code set 10
#スニークしているプレイヤーにワープ
execute as @a[tag=tpsneakplayer] at @s run tp @a[scores={sneak_time=1..},limit=1,sort=furthest,predicate=neofunction:player,tag=!froggame,tag=!parkour]

tag @a[tag=tpspawnlocation] remove tpspawnlocation
tag @a[tag=tppalaceofceresta] remove tppalaceofceresta
tag @a[tag=tpsneakplayer] remove tpsneakplayer