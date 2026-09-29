# 命名：1024
# 説明：システム
# 説明：進捗達成時
# >
# =/function neofunction:system/adv/inventory_changed/1024


# 内容
execute if entity @s[tag=!1024] run clear @s bow[minecraft:custom_model_data={floats:[1024.0f]}]
execute if entity @s[tag=!1024] run clear @s pumpkin_seeds[minecraft:custom_model_data={floats:[1024.0f]}]
execute if entity @s[tag=!1024] run clear @s elytra[minecraft:custom_model_data={floats:[1024.0f]}]
execute if entity @s[tag=!1024] run clear @s arrow[minecraft:custom_model_data={floats:[1024.0f]}]

execute if entity @s[tag=!1024] run tellraw @s [{"text":"<まもる君> ","color":"dark_red","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"ルール違反が検知されました。"}]}},{"selector":"@s"},{"text":"くん...それは('ω'乂)ﾀﾞﾒｰ"}]

execute if entity @s[tag=!1024] run playsound minecraft:entity.villager.no record @a ~ ~ ~ 1 0.1 1