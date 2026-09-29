# 命名：4
# 説明：トリガー
# >/function neofunction:system/trigger/code
# =/function neofunction:asset/sign/nexus/hatch/4


# 内容
tellraw @s[advancements={neoadvancement:nexus/root/1/4=false}] "§b§l条件：チュートリアル4を完了する。\n§3§l報酬：§fホープスター\n§9§l説明：§d「願いの強さ」§7が§c力§7に直結する§5世界§7\n彼方の君は§b希望を現実に昇華させるための力§7、§3冀求力§7【ききゅうりょく】を行使する術を知る\nあの未来を変えるため冀求力を強化し、§6レベル§7を上げていくために§eホープスター§7を集めよう。それは君の魂に§a記憶§7され、決して失われない力となるから。"

# 前提チュートリアル未達成
execute in neodimension:nexus run tp @s[advancements={neoadvancement:nexus/root/1/3=false}] 1282.52 110.13 1337.95 0.30 48.92
execute as @s[advancements={neoadvancement:nexus/root/1/3=false}] run return run title @s actionbar {"text":"注：チュートリアル3をクリアするまで達成不可","color":"red","bold":true,"italic":false}

# エンダーチェスト
execute unless entity @a[scores={EXP=1..}] run item replace entity @s enderchest.13 from entity @e[tag=world,limit=1] container.0
execute unless score star EXP matches 0.. run execute in neodimension:nexus run tp @s 1277.54 110.00 1350.50 1.36 33.49
execute unless score star EXP matches 0.. run return run tellraw @s {"text":"注：エンダーチェストから経験値を取り出すまで達成不可","color":"red","bold":true,"italic":false}

# 異空進捗未達成
execute in neodimension:nexus run tp @s[advancements={neoadvancement:neo/root=false}] 1283.70 110.00 1348.54 -91.45 19.06
execute as @s[advancements={neoadvancement:neo/root=false}] run return run title @s actionbar {"text":"注：異空進捗解放まで達成不可","color":"red","bold":true,"italic":false}

advancement revoke @s only neoadvancement:nexus/root/1/4
advancement grant @s only neoadvancement:nexus/root/1/4

playsound minecraft:ui.toast.challenge_complete record @s ~ ~ ~ 0.1 1.5 1

tellraw @s [{"text":"<"},{"text":"C.A.I.","color":"dark_purple","bold":true,"italic":false},{"text":"> チュートリアル4を完了を検知。("},{"keybind":"key.advancements","color":"aqua","bold":true},{"text":")を押して達成した進捗を確認してください！"}]

execute as @s at @s run tp @s ~ ~ ~14 ~ ~

# 移動通知
execute as @s at @s run title @s subtitle {"text":"次の階層へ","color":"dark_aqua","italic":false}
execute as @s at @s run title @s title {"text":"～5th Room～","color":"dark_aqua","bold":true,"italic":false}

# execute as @s[scores={EXP=..1}] run say scores={EXP=..1}
# execute as @s[scores={EXP=1..}] run say scores={EXP=1..}

