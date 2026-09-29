# 命名：205
# 説明：トリガー
# >/function neofunction:system/trigger/code
# =/function neofunction:system/trigger/code/205



# 内容
execute unless dimension neodimension:nexus run return run title @s actionbar {"text":"注：NEXUS外では使用不可","color":"red","bold":true,"italic":false}

tellraw @s[advancements={neoadvancement:nexus/root/1/5=false}] "§b§l条件：チュートリアル5を完了する。\n§3§l報酬：§r§f「スキルポケット」の解放\n§9§l説明：§7インベントリ§d左上§7の新たなるスロット。\n§dスキルポケット§7はスキル§eメニュー§7やエクストラ§eアイテム§7などの新たな力に簡単にアクセスするためにある。まずはインベントリを開きスキルスロットにカーソルを合わせ、§f投げるキー§7を押して§aスキルメニュー§7を開いてみよう。このメニューでは§cステータス§7や§cスキルの設定§7ができる。さらに中に入っているアイテムを取り出してみよう。"

# 前提チュートリアル未達成
execute in neodimension:nexus run tp @s[advancements={neoadvancement:nexus/root/1/4=false}] 1282.52 110.13 1351.95 0.91 50.59
execute as @s[advancements={neoadvancement:nexus/root/1/4=false}] run return run title @s actionbar {"text":"注：チュートリアル4をクリアするまで達成不可","color":"red","bold":true,"italic":false}

# アイテム進捗未達成
execute in neodimension:nexus run tp @s[advancements={neoadvancement:5/root=false}] 1283.70 110.00 1362.46 -448.44 17.24
execute as @s[advancements={neoadvancement:5/root=false}] run return run title @s actionbar {"text":"注：アイテム進捗解放まで達成不可","color":"red","bold":true,"italic":false}

# 異名システム触ってない
execute unless score @s name matches 1000 in neodimension:nexus run tp @s 1282.54 110.13 1365.95 -1.06 56.28
execute unless score @s name matches 1000 run return run title @s actionbar {"text":"注：異名変更まで達成不可","color":"red","bold":true,"italic":false}

advancement revoke @s only neoadvancement:nexus/root/1/5
advancement grant @s only neoadvancement:nexus/root/1/5

playsound minecraft:ui.toast.challenge_complete record @s ~ ~ ~ 0.1 1.5 1

tellraw @s [{"text":"<"},{"text":"C.A.I.","color":"dark_purple","bold":true,"italic":false},{"text":"> チュートリアル5を完了を検知。("},{"keybind":"key.advancements","color":"aqua","bold":true},{"text":")を押して達成した進捗を確認してください！"}]



# 次の部屋のリセット処理
execute in neodimension:nexus run fill 1281 112 1381 1278 111 1381 spawner
