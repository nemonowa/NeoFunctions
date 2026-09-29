# 命名：2
# 説明：トリガー
# >/function neofunction:system/trigger/code
# =/function neofunction:asset/sign/nexus/hatch/2


# 内容
tellraw @s[advancements={neoadvancement:nexus/root/1/2=false}] "§b§l条件：チュートリアル2を完了する。\n§3§l報酬：§r§f/trigger tip\n§9§l説明：§d۞スペルテキスト۞\n§7看板や本、チャット欄のテキストの中にはマウスホバーやクリックに反応する特殊なテキストがある。特に§c§nアンダーバー§7がついているテキストは要チェック！とりあえず§a§lクリック§7しておこう。ｲｲｺﾄｱﾙﾖ。\n§b＞推奨設定\n§f§lESC/設定/言語設定/Unicodeを強制する：オン\nESC/設定/チャット設定/通常時の高さ：90px"

execute in neodimension:nexus run tp @s[advancements={neoadvancement:nexus/root/1/1=false}] 1282.50 110.13 1309.95 1.82 50.89

execute as @s[advancements={neoadvancement:nexus/root/1/1=false}] run return run title @s actionbar {"text":"注：チュートリアル1をクリアするまで達成不可","color":"red","bold":true,"italic":false}

advancement revoke @s only neoadvancement:nexus/root/1/2
advancement grant @s only neoadvancement:nexus/root/1/2

playsound minecraft:ui.toast.challenge_complete record @s ~ ~ ~ 0.1 1.5 1

tellraw @s [{"text":"<"},{"text":"C.A.I.","color":"dark_purple","bold":true,"italic":false},{"text":"> チュートリアル2を完了を検知。("},{"keybind":"key.advancements","color":"aqua","bold":true},{"text":")を押して達成した進捗を確認してください！"}]

# 印板あげない
# clear @s minecraft:armor_stand
# loot give @s loot neofunction:item/783

# 移動通知
execute as @s at @s run title @s subtitle {"text":"～How to go to 3rd Room～","color":"dark_aqua","italic":false}
execute as @s at @s run title @s title {"text":"下の本を読んで進む","color":"dark_aqua","bold":true,"italic":false}

# 次の部屋のリセット処理
execute in neodimension:nexus run fill 1281 112 1339 1278 111 1339 light_gray_stained_glass