# 命名：5
# 説明：トリガー
# >/function neofunction:system/trigger/code
# =/function neofunction:asset/sign/nexus/hatch/5



# 内容
tellraw @s[advancements={neoadvancement:nexus/root/1/5=false}] "§b§l条件：チュートリアル5を完了する。\n§3§l報酬：§r§f「スキルポケット」の解放\n§9§l説明：§7インベントリ§d左上§7の新たなるスロット。\n§dスキルポケット§7はスキル§eメニュー§7やエクストラ§eアイテム§7などの新たな力に簡単にアクセスするためにある。まずはインベントリを開きスキルスロットにカーソルを合わせ、§f投げるキー§7を押して§aスキルメニュー§7を開いてみよう。このメニューでは§cステータス§7や§cスキルの設定§7ができる。さらに中に入っているアイテムを取り出してみよう。"

# 前提チュートリアル未達成
execute in neodimension:nexus run tp @s[advancements={neoadvancement:nexus/root/1/4=false}] 1282.52 110.13 1351.95 0.91 50.59
execute as @s[advancements={neoadvancement:nexus/root/1/4=false}] run return run title @s actionbar {"text":"注：チュートリアル4をクリアするまで達成不可","color":"red","bold":true,"italic":false}

# アイテム進捗未達成
execute in neodimension:nexus run tp @s[advancements={neoadvancement:neoitem/root=false}] 1283.70 110.00 1362.46 -448.44 17.24
execute as @s[advancements={neoadvancement:neoitem/root=false}] run return run title @s actionbar {"text":"注：アイテム進捗解放まで達成不可","color":"red","bold":true,"italic":false}

# 異名システム触ってない
execute unless score @s name matches 1000 in neodimension:nexus run tp @s 1282.54 110.13 1365.95 -1.06 56.28
execute unless score @s name matches 1000 run return run title @s actionbar {"text":"注：異名変更まで達成不可","color":"red","bold":true,"italic":false}

advancement revoke @s only neoadvancement:nexus/root/1/5
advancement grant @s only neoadvancement:nexus/root/1/5

playsound minecraft:ui.toast.challenge_complete record @s ~ ~ ~ 0.1 1.5 1

tellraw @s [{"text":"<"},{"text":"C.A.I.","color":"dark_purple","bold":true,"italic":false},{"text":"> チュートリアル5を完了を検知。("},{"keybind":"key.advancements","color":"aqua","bold":true},{"text":")を押して達成した進捗を確認してください！"}]

execute as @s at @s run tp @s ~ ~ ~14 ~ ~

# 移動通知
execute as @s at @s run title @s subtitle {"text":"次の階層へ","color":"dark_aqua","italic":false}
execute as @s at @s run title @s title {"text":"～6th Room～","color":"dark_aqua","bold":true,"italic":false}


# 次の部屋のリセット処理
execute in neodimension:nexus run fill 1280 112 1381 1279 111 1381 spawner

execute positioned 1279 112 1381 unless entity @e[type=minecraft:armor_stand,distance=..0.1] run summon armor_stand ~ ~ ~ {CustomName:{"text":"ノーチラス位相鋲","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},CustomNameVisible:0b,Team:"dark_blue",NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["air"],Pose:{Head:[180f,0f,0f]},equipment:{head:{id:"minecraft:spawner",count:1}}}

execute positioned 1280 112 1381 unless entity @e[type=minecraft:armor_stand,distance=..0.1] run summon armor_stand ~ ~ ~ {CustomName:{"text":"ノーチラス位相鋲","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},CustomNameVisible:0b,Team:"dark_blue",NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["air"],Pose:{Head:[180f,0f,0f]},equipment:{head:{id:"minecraft:spawner",count:1}}}

execute positioned 1279 111 1381 unless entity @e[type=minecraft:armor_stand,distance=..0.1] run summon armor_stand ~ ~ ~ {CustomName:{"text":"ノーチラス位相鋲","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},CustomNameVisible:0b,Team:"dark_blue",NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["air"],Pose:{Head:[180f,0f,0f]},equipment:{head:{id:"minecraft:spawner",count:1}}}

execute positioned 1280 111 1381 unless entity @e[type=minecraft:armor_stand,distance=..0.1] run summon armor_stand ~ ~ ~ {CustomName:{"text":"ノーチラス位相鋲","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},CustomNameVisible:0b,Team:"dark_blue",NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["air"],Pose:{Head:[180f,0f,0f]},equipment:{head:{id:"minecraft:spawner",count:1}}}