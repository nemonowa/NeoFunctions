# 命名：3
# 説明：トリガー
# >/function neofunction:system/trigger/code
# =/function neofunction:asset/sign/nexus/hatch/3


# 内容
tellraw @s[advancements={neoadvancement:nexus/root/1/3=false}] "§b§l条件：チュートリアル3を完了する。\n§3§l報酬：§f/trigger kill\n§9§l説明：§7ようこそ§a新世界§7へ！\nここから先は君の§1「常識」§7は通用しない。世界の仕組みは再構成され、真に混沌とした、§d最高にクレイジーな不条理§7が君を新たな次元へ誘うだろう。"

# 前提チュートリアル未達成
execute in neodimension:nexus run tp @s[advancements={neoadvancement:nexus/root/1/2=false}] 1282.55 110.13 1323.95 0.91 47.70
execute as @s[advancements={neoadvancement:nexus/root/1/2=false}] run return run title @s actionbar {"text":"注：チュートリアル2をクリアするまで達成不可","color":"red","bold":true,"italic":false}

advancement revoke @s only neoadvancement:nexus/root/1/3
advancement grant @s only neoadvancement:nexus/root/1/3

playsound minecraft:ui.toast.challenge_complete record @s ~ ~ ~ 0.1 1.5 1

# 移動通知
execute as @s at @s run title @s subtitle {"text":"～How to go to 4th Room～","color":"dark_aqua","italic":false}
execute as @s at @s run title @s title {"text":"進捗を開こう(L)","color":"dark_aqua","bold":true,"italic":false}

tellraw @s [{"text":"<"},{"text":"C.A.I.","color":"dark_purple","bold":true,"italic":false},{"text":"> チュートリアル3を完了を検知。("},{"keybind":"key.advancements","color":"aqua","bold":true},{"text":")を押して達成した進捗を確認してください！"}]
