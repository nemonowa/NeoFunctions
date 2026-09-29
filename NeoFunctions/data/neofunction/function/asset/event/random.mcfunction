# 命名：random
# 説明：ランダムイベント用
# 説明：複数から一つをランダムに抽選する
# 実行条件：20分～60分周期
# >/function neofunction:system/60_second
# =/function neofunction:asset/event/random


# 内容
execute as @s run return run tellraw @s[gamemode=creative] [{"text":"注：現在は予感処理をスキップしています","color":"red"}]

# 演出
playsound minecraft:block.portal.travel record @s ~ ~ ~ 0.1 0.1 0.1
playsound minecraft:entity.warden.emerge record @s ~ ~ ~ 0.1 0.1 0.1
playsound minecraft:entity.wither.spawn record @s ~ ~ ~ 0.1 0.1 0.1

# 通知
tellraw @s {"text":"* 何かが始まる気がする","color":"#FFADE9","bold":true,hover_event:{"action":"show_text","value":[{"text":"Something feels off..."}]}}

# SANCHECKtitle(構想が決まるまでは停止）
#title @s subtitle [{"text":"xxx","color":"dark_red","bold":true,"italic":true,"obfuscated":true},{"text":" = SAN CHECK 1D100 = ","color":"red","obfuscated":false},{"text":"xxx"}]
#title @s title [{"text":"xxx","color":"dark_red","bold":true,"italic":true,"obfuscated":true},{"text":" WARNING ","color":"red","obfuscated":false},{"text":"xxx"}]

# SAN　(構想が決まるまでは停止）
#schedule function neofunction:player/sp/remove/1d100 5s replace

# ワールドボーダー
function neofunction:asset/worldborder/.neo
schedule function neofunction:asset/worldborder/reset 6s replace

# ランダム実行
#execute as @a at @s run summon spawner_minecart ~ ~3 ~ {PortalCooldown:10,NoGravity:1b,Silent:1b,Glowing:0b,Invulnerable:1b,SpawnCount:1,SpawnRange:1,Delay:0,MinSpawnDelay:72000,MaxSpawnDelay:72000,RequiredPlayerRange:64,Motion:[0.0,2.0,0.0],CustomName:{"text":"即時複製式高次元門","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},DisplayState:{id:"minecraft:air"},SpawnPotentials:[{weight:1,data:{entity:{id:"minecraft:item",Age:5900,PickupDelay:72000,HasVisualFire:1b,CustomName:{"text":"サモンスクロール"},Item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{floats:[1.0f]},"minecraft:custom_data":{summon:501}}}}}},{weight:1,data:{entity:{id:"minecraft:item",Age:5900,PickupDelay:72000,HasVisualFire:1b,CustomName:{"text":"サモンスクロール"},Item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{floats:[1.0f]},"minecraft:custom_data":{summon:500}}}}}}]}