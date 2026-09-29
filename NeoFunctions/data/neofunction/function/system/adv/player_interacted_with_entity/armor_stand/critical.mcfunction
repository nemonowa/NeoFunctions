# 命名： critical
# 説明： 実行者はアマスタ
# >/function neofunction:system/adv/player_interacted_with_entity/armor_stand
# =/function neofunction:system/adv/player_interacted_with_entity/armor_stand/critical

#全部位揃ってなかったらreturn
execute unless entity @s[nbt={equipment:{feet:{components:{"minecraft:custom_model_data":{floats:[1306.0f]}}},legs:{components:{"minecraft:custom_model_data":{floats:[1305.0f]}}},chest:{components:{"minecraft:custom_model_data":{floats:[1304.0f]}}},head:{components:{"minecraft:custom_model_data":{floats:[1303.0f]}}}}}] run return 0

#演出
execute at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16773862],fade_colors:[I;16775083]}]}}}}
tellraw @a {"text":"【展示用】「臨界の法衣」をコンプリートした！","color":"white","italic":false,"underlined":true}

#現状サーバーにいる全員に経験値を上げているが、途中参加の人の経験値マルチ共有微妙だよなぁ
execute as @a at @s run function neofunction:player/level/give/item/4
#一度コンプリートしたアマスタは次回から除外
tag @s add complete