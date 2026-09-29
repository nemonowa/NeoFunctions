# 命名：ceresta_festa
# 説明：neodimension:ceresta_festaに転移したとき
# >/function neofunction:system/adv/changed_dimension/.neo
# =/function neofunction:system/adv/changed_dimension/dimension/ceresta_festa


# 内容：セレスタフェスタ
execute if entity @s[advancements={neoadvancement:ceresta/root=true}] run title @s title {"text":"セレスタフェスタ","color":"#C3D825","bold":true,"italic":false,"underlined":true}
execute if entity @s[advancements={neoadvancement:ceresta/root=true}] run title @s subtitle [{"text":"= ","color":"dark_gray"},{"text":"豊穣","color":"#C3D825"},{"text":"の"},{"text":"大","color":"dark_green"},{"text":"自然島 ="}]
execute if entity @s[advancements={neoadvancement:ceresta/root=true}] run playsound item.goat_horn.sound.0 record @s ~ ~ ~ 10 0.6 1
execute if entity @s[advancements={neoadvancement:ceresta/root=true}] run particle dust_color_transition{from_color:[0.765,0.847,0.145],to_color:[1.000,1.000,1.000],scale:1.5} ~ ~ ~ 1 2 1 0 99 force @s