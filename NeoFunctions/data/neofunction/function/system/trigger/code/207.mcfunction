# 命名：207
# 説明：トリガー
# >/function neofunction:system/trigger/code
# =/function neofunction:system/trigger/code/207


# 内容
execute unless dimension neodimension:nexus run return run title @s actionbar {"text":"注：NEXUS外では使用不可","color":"red","bold":true,"italic":false}

# スライム式ハッチ
execute unless entity @e[distance=..99,tag=hatch1] run summon slime 1280 110.5 1409 {Silent:1b,Glowing:1b,Team:"dark_aqua",NoAI:1b,Size:1,Tags:["lv2"],Passengers:[{id:"minecraft:slime",Silent:1b,Glowing:1b,Team:"dark_aqua",NoAI:1b,Size:1,Tags:[lv2,hatch1],CustomName:{"text":"スライム式ハッチ","color":"dark_aqua","bold":true,"italic":false},active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b,show_icon:0b,ambient:0b},{id:"minecraft:regeneration",amplifier:9b,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}]},{id:"minecraft:slime",Silent:1b,Glowing:1b,Team:"dark_aqua",NoAI:1b,Size:1,Tags:["lv2"],CustomName:{"text":"スライム式ハッチ","color":"dark_aqua","bold":true,"italic":false},active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b,show_icon:0b,ambient:0b},{id:"minecraft:regeneration",amplifier:9b,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}]},{id:"minecraft:slime",Silent:1b,Glowing:1b,Team:"dark_aqua",NoAI:1b,Size:1,Tags:["lv2"],CustomName:{"text":"スライム式ハッチ","color":"dark_aqua","bold":true,"italic":false},active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b,show_icon:0b,ambient:0b},{id:"minecraft:regeneration",amplifier:9b,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}]},{id:"minecraft:slime",Silent:1b,Glowing:1b,Team:"dark_aqua",NoAI:1b,Size:1,Tags:["lv2"],CustomName:{"text":"スライム式ハッチ","color":"dark_aqua","bold":true,"italic":false},active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b,show_icon:0b,ambient:0b},{id:"minecraft:regeneration",amplifier:9b,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}]}],CustomName:{"text":"スライム式ハッチ","color":"dark_aqua","bold":true,"italic":false},active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b,show_icon:0b,ambient:0b},{id:"minecraft:regeneration",amplifier:9b,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}]}

execute unless entity @e[distance=..99,tag=hatch2] run summon slime 1279 110.5 1409 {Silent:1b,Glowing:1b,Team:"dark_aqua",NoAI:1b,Size:1,Tags:[lv2,hatch2],Passengers:[{id:"minecraft:slime",Silent:1b,Glowing:1b,Team:"dark_aqua",NoAI:1b,Size:1,Tags:["lv2"],CustomName:{"text":"スライム式ハッチ","color":"dark_aqua","bold":true,"italic":false},active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b,show_icon:0b,ambient:0b},{id:"minecraft:regeneration",amplifier:9b,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}]},{id:"minecraft:slime",Silent:1b,Glowing:1b,Team:"dark_aqua",NoAI:1b,Size:1,Tags:["lv2"],CustomName:{"text":"スライム式ハッチ","color":"dark_aqua","bold":true,"italic":false},active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b,show_icon:0b,ambient:0b},{id:"minecraft:regeneration",amplifier:9b,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}]},{id:"minecraft:slime",Silent:1b,Glowing:1b,Team:"dark_aqua",NoAI:1b,Size:1,Tags:["lv2"],CustomName:{"text":"スライム式ハッチ","color":"dark_aqua","bold":true,"italic":false},active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b,show_icon:0b,ambient:0b},{id:"minecraft:regeneration",amplifier:9b,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}]},{id:"minecraft:slime",Silent:1b,Glowing:1b,Team:"dark_aqua",NoAI:1b,Size:1,Tags:["lv2"],CustomName:{"text":"スライム式ハッチ","color":"dark_aqua","bold":true,"italic":false},active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b,show_icon:0b,ambient:0b},{id:"minecraft:regeneration",amplifier:9b,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}]}],CustomName:{"text":"スライム式ハッチ","color":"dark_aqua","bold":true,"italic":false},active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b,show_icon:0b,ambient:0b},{id:"minecraft:regeneration",amplifier:9b,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}]}

tellraw @s[advancements={neoadvancement:nexus/root/1/7=false}] "§b§l条件：チュートリアル7を完了する。\n§3§l報酬：§fスキル「存在解析」の解放\n§9§l説明：§7それは未知の§9知識端末§7\n異空兵装の第一形態にして、§eバッチ§7のような徽章端末から表示される§6ホロディスプレイ§7。ステータス情報や§5必須スキル§7が格納されている。貴官専用のNEXUSへのパスポート。\n§dシフトスキル§7で対象の情報を解析し、見つけたアンカーを攻略及び転移が可能にする！"

# 前提チュートリアル未達成
execute in neodimension:nexus run tp @s[advancements={neoadvancement:nexus/root/1/6=false}] 1282.52 110.13 1379.95 1.37 49.07
execute as @s[advancements={neoadvancement:nexus/root/1/6=false}] run return run title @s actionbar {"text":"注：チュートリアル6をクリアするまで達成不可","color":"red","bold":true,"italic":false}

# エリア進捗未達成
execute in neodimension:nexus run tp @s[advancements={neoadvancement:2/root=false}] 1283.70 110.00 1390.57 -90.57 18.75
execute as @s[advancements={neoadvancement:2/root=false}] run return run title @s actionbar {"text":"注：エリア進捗解放まで達成不可","color":"red","bold":true,"italic":false}

# アンカー未解析
tellraw @s[advancements={neoadvancement:2/67=false}] "異空の徽章の§dシフトスキル§7でアンカーを解析してください！"
execute as @s[advancements={neoadvancement:2/67=false}] run return run tellraw @s {"text":"注：アンカーを解析するまで達成不可","color":"red","bold":true,"italic":false}

advancement revoke @s only neoadvancement:nexus/root/1/7
advancement grant @s only neoadvancement:nexus/root/1/7

playsound minecraft:ui.toast.challenge_complete record @s ~ ~ ~ 0.1 1.5 1

tellraw @s [{"text":"<"},{"text":"C.A.I.","color":"dark_purple","bold":true,"italic":false},{"text":"> チュートリアル7を完了を検知。("},{"keybind":"key.advancements","color":"aqua","bold":true},{"text":")を押して達成した進捗を確認してください！"}]




