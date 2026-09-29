# 命名：end
# 説明：froggame 終了処理
# >/function neofunction:asset/event/froggame/start ←からの300s
# >/function neofunction:asset/event/froggame/respawn
# >/function neofunction:system/adv/location/ceresta/froggame
# =/function neofunction:asset/event/froggame/end

tag @s add froggame

execute in neodimension:ceresta_festa run tp @a[tag=froggame] 991.85 43.00 2155.86 -89.39 4.06
execute as @a[tag=froggame] at @s run function neofunction:system/music/harvestdance/change_to_this

# リザルト表示
title @a[tag=froggame] subtitle [{"color":"#FFE45E","text":"F"},{"color":"#FFD75E","text":"r"},{"color":"#FFCA5E","text":"o"},{"color":"#FFBD5E","text":"g "},{"color":"#FFB05E","text":"G"},{"color":"#FFA35E","text":"a"},{"color":"#FF965E","text":"m"},{"color":"#FF895E","text":"e "},{"color":"#FF785E","text":"– "},{"color":"#FF895E","text":"R"},{"color":"#FF965E","text":"e"},{"color":"#FFA35E","text":"s"},{"color":"#FFB05E","text":"u"},{"color":"#FFBD5E","text":"l"},{"color":"#FFCA5E","text":"t"}]
title @a[tag=froggame] title [{"text":"|||","color":"gold","bold":true,"obfuscated":true},{"text":" TIME UP ","color":"yellow","obfuscated":false},{"text":"|||","color":"gold","bold":true,"obfuscated":true}]
execute as @a[tag=froggame] at @s run playsound minecraft:entity.player.levelup record @s ~ ~ ~ 1 1.0
# 300秒生存(タイムアップ)成功のファンファーレ
execute as @a[tag=froggame] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.0


# 既存スケジュールの一括クリア(念のため全て解除)
schedule clear neofunction:asset/event/froggame/w1
schedule clear neofunction:asset/event/froggame/w2
schedule clear neofunction:asset/event/froggame/w3
schedule clear neofunction:asset/event/froggame/w4
schedule clear neofunction:asset/event/froggame/w5
schedule clear neofunction:asset/event/froggame/w6
schedule clear neofunction:asset/event/froggame/w7
schedule clear neofunction:asset/event/froggame/w8
schedule clear neofunction:asset/event/froggame/w9
schedule clear neofunction:asset/event/froggame/w10
schedule clear neofunction:asset/event/froggame/w11
schedule clear neofunction:asset/event/froggame/w12
schedule clear neofunction:asset/event/froggame/w13
schedule clear neofunction:asset/event/froggame/w14
schedule clear neofunction:asset/event/froggame/w15
schedule clear neofunction:asset/event/froggame/infinity
schedule clear neofunction:asset/event/froggame/bgm_loop
schedule clear neofunction:asset/event/froggame/end


execute as @a[tag=froggame] at @s run function neofunction:player/armor/lock/unset

#報酬処理
execute as @a[tag=froggame,limit=1,sort=random] at @s run function neofunction:asset/event/froggame/reward
execute as @a[tag=froggame] at @s run function neofunction:asset/event/froggame/result

schedule function neofunction:asset/event/froggame/init 1s

# タグ削除(最後に実行)
tag @a[tag=froggame] remove froggame