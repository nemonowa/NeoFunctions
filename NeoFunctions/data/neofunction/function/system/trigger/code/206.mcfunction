# 命名：206
# 説明：トリガー
# >/function neofunction:system/trigger/code
# =/function neofunction:system/trigger/code/206



# 内容
execute unless dimension neodimension:nexus run return run title @s actionbar {"text":"注：NEXUS外では使用不可","color":"red","bold":true,"italic":false}

tellraw @s[advancements={neoadvancement:nexus/root/1/6=false}] "§b§l条件：チュートリアル6を完了する。\n§3§l報酬：§f「スキルメモリー」の解放\n§9§l説明：§dスキルポケット§7から取り出したアイテムには色々な§5スキル§7が格納されている。この異空兵装こそが§e貴方専用の武器§7であり、計器であり、真の意味で§6貴官固有の兵器§7となりうる。はじめは説明を読みながら少しずつ研究してみるといいだろう。\n特に§2重要な操作§7として、空中に放り§a投げて§7アイテムの§a形態を変化§7させる§d「兵装変形」§7とアイテムをメインハンドに持ち§a一定時間しゃがんで§7発動する§d「シフトスキル」§7は憶えておこう！"

# 前提チュートリアル未達成
execute in neodimension:nexus run tp @s[advancements={neoadvancement:nexus/root/1/5=false}] 1282.55 110.13 1365.95 -0.15 48.16
execute as @s[advancements={neoadvancement:nexus/root/1/5=false}] run return run title @s actionbar {"text":"注：チュートリアル5をクリアするまで達成不可","color":"red","bold":true,"italic":false}

# エンティティ進捗未達成
execute in neodimension:nexus run tp @s[advancements={neoadvancement:3/root=false}] 1283.70 110.00 1376.51 -91.02 18.61
execute as @s[advancements={neoadvancement:3/root=false}] run return run title @s actionbar {"text":"注：エンティティ進捗解放まで達成不可","color":"red","bold":true,"italic":false}

advancement revoke @s only neoadvancement:nexus/root/1/6
advancement grant @s only neoadvancement:nexus/root/1/6

playsound minecraft:ui.toast.challenge_complete record @s ~ ~ ~ 0.1 1.5 1

tellraw @s [{"text":"<"},{"text":"C.A.I.","color":"dark_purple","bold":true,"italic":false},{"text":"> チュートリアル6を完了を検知。("},{"keybind":"key.advancements","color":"aqua","bold":true},{"text":")を押して達成した進捗を確認してください！"}]


effect give @s minecraft:haste 9 99
