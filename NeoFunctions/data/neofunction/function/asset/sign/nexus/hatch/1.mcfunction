# 命名：1
# 説明：トリガー[advancements={neoadvancement:nexus/root/1/1=false}]
# >/function neofunction:system/trigger/code
# =/function neofunction:asset/sign/nexus/hatch/1


# 内容
title @s actionbar {"text":"成功：データパック適応済み！","color":"green","bold":true,"italic":false}

tellraw @s "§b§l条件：チュートリアル1を完了する。\n§3§l報酬：§r§f進捗「異空の航海記」の解放\n§9§l説明：§aデータパック§7と§eリソースパック§7を導入しよう。§d世界の見え方が変わる§7はずだ。もし正常に導入できていれば、§5異界への水先案内人§7が貴方の着任を歓迎するだろう。その姿は観測者によって見え方が異なる。もし§eリソパ§7が足らないと、§5見慣れぬ存在§7に出迎えられたように君の目には映るかもしれない。もし§aデタパ§7の導入ができていないと、その場所にすら辿り着けないかもしれない。\n§3知覚・観測§7を開始せよ、それが君たち知性体に与えられた§6使命§7であると信じるのならば。"

# 達成
advancement revoke @s only neoadvancement:nexus/root/1/1
advancement grant @s only neoadvancement:nexus/root/1/1

playsound minecraft:ui.toast.challenge_complete record @s ~ ~ ~ 0.1 1.5 1

tellraw @s [{"text":"<"},{"text":"C.A.I.","color":"dark_purple","bold":true,"italic":false},{"text":"> チュートリアル1を完了を検知。("},{"keybind":"key.advancements","color":"aqua","bold":true},{"text":")を押して達成した進捗を確認してください！"}]

# 移動：テレポート
execute as @s at @s run tp @s ~ ~ ~7 ~ ~
execute as @s at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 0.3 2 0
execute as @s at @s run particle minecraft:portal ~ ~ ~ 0.1 0.1 0.1 0.3 90 force

# 移動通知
execute as @s at @s run title @s subtitle {"text":"次の階層へ","color":"dark_aqua","italic":false}
execute as @s at @s run title @s title {"text":"～2nd Room～","color":"dark_aqua","bold":true,"italic":false}

