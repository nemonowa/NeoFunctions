# 命名：8
# 説明：トリガー
# >/function neofunction:system/trigger/code
# =/function neofunction:asset/sign/nexus/hatch/8



# 内容
tellraw @s[advancements={neoadvancement:nexus/root/1/8=false}] "§b§l条件：チュートリアル8を完了する。\n§3§l報酬：§f基礎スキル3種の解放\n§9§l説明：§7それは未知の§9金属匣体§7\n異空兵装の第二形態にして、希求力を燃料に§6ソウルの刃§7を形成する特殊な火器。§eライター§7のような形状の刀。自身の攻撃力を増幅し、攻撃した相手の§5体力を可視化§7する。\n§dシフトスキル§7でソウルを研ぎ澄まし、周囲16mのスポナーを発光させる！"

# 前提チュートリアル未達成
execute in neodimension:nexus run tp @s[advancements={neoadvancement:nexus/root/1/7=false}] 1282.46 110.13 1393.95 0.45 51.87
execute as @s[advancements={neoadvancement:nexus/root/1/7=false}] run return run title @s actionbar {"text":"注：チュートリアル7をクリアするまで達成不可","color":"red","bold":true,"italic":false}

# スキル進捗未達成
execute in neodimension:nexus run tp @s[advancements={neoadvancement:neoskill/root=false}] 1283.70 110.00 1404.55 269.30 16.78
execute as @s[advancements={neoadvancement:neoskill/root=false}] run return run title @s actionbar {"text":"注：スキル進捗解放まで達成不可","color":"red","bold":true,"italic":false}

#
execute as @s[advancements={neoadvancement:neoskill/root/5=false}] run return run title @s actionbar {"text":"注：スキル解放まで達成不可","color":"red","bold":true,"italic":false}
execute as @s[advancements={neoadvancement:neoskill/root/6=false}] run return run title @s actionbar {"text":"注：スキル解放まで達成不可","color":"red","bold":true,"italic":false}
execute as @s[advancements={neoadvancement:neoskill/root/7=false}] run return run title @s actionbar {"text":"注：スキル解放まで達成不可","color":"red","bold":true,"italic":false}

# 
advancement revoke @s only neoadvancement:nexus/root/1/8
advancement grant @s only neoadvancement:nexus/root/1/8

playsound minecraft:ui.toast.challenge_complete record @s ~ ~ ~ 0.1 1.5 1

# 移動通知
execute as @s at @s run title @s subtitle {"text":"次の階層へ","color":"dark_aqua","italic":false}
execute as @s at @s run title @s title {"text":"～9th Room～","color":"dark_aqua","bold":true,"italic":false}


tellraw @s [{"text":"<"},{"text":"C.A.I.","color":"dark_purple","bold":true,"italic":false},{"text":"> チュートリアル8を完了を検知。("},{"keybind":"key.advancements","color":"aqua","bold":true},{"text":")を押して達成した進捗を確認してください！"}]



