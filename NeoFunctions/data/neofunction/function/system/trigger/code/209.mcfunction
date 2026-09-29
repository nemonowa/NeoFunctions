# 命名：209
# 説明：トリガー
# >/function neofunction:system/trigger/code
# =/function neofunction:system/trigger/code/209



# 内容
execute unless dimension neodimension:nexus run return run tellraw @s {"text":"注：NEXUS外では使用不可","color":"red","bold":true,"italic":false}

tellraw @s[advancements={neoadvancement:nexus/root/1/9=false}] "§b§l条件：チュートリアル9を完了する。\n§3§l報酬：§fスキル「転移要請」の解放\n§9§l説明：§7それは未知の§9透明球体§7\n異空兵装の第三形態にして、本体は透明の球体で、内部には四方向以上を示す羅針が、外部には§e衛星起動§7のように周回している。持ち主の§5目指すべき道§7を示す§6羅針盤§7。\n§dシフトスキル§7であらゆる次元からでもNEXUSに帰還できる！"

execute in neodimension:nexus run tp @s[advancements={neoadvancement:nexus/root/1/8=false}] 1282.47 110.13 1407.95 0.45 53.69

execute as @s[advancements={neoadvancement:nexus/root/1/8=false}] run return run title @s actionbar {"text":"注：チュートリアル8をクリアするまで達成不可","color":"red","bold":true,"italic":false}


# 達成
advancement revoke @s only neoadvancement:nexus/root/1/9
advancement grant @s only neoadvancement:nexus/root/1/9

playsound minecraft:ui.toast.challenge_complete record @s ~ ~ ~ 0.1 1.5 1
playsound minecraft:ui.toast.challenge_complete record @s ~ ~ ~ 0.5 1.0 1

tellraw @s [{"text":"<"},{"text":"C.A.I.","color":"dark_purple","bold":true,"italic":false},{"text":"> チュートリアル9を完了を検知。("},{"keybind":"key.advancements","color":"aqua","bold":true},{"text":")を押して達成した進捗を確認してください！"}]




