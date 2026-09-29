# 命名：1_get_exp
# 説明：ネザースターを拾った時、現在までの拾った個数を加算、合計しレベルを定める処理
# >/function neofunction:system/adv/inventory_changed/nether_star
# =/function neofunction:player/level/1_get_exp


# 内容
execute store result score temp EXP run clear @s minecraft:nether_star

tellraw @s [{"text":"* ","color":"aqua","underlined":true,hover_event:{"action":"show_text","value":[{"text":"説明：新スキル獲得に利用できる経験値。ワールド全体で共有され、利用可能合計数はサイドバーのS-Starで確認できる。"}]}},{"selector":"@s","color":"white"},{"text":" はSkill-Starを"},{"score":{"name":"temp","objective":"EXP"},"color":"dark_aqua","bold":true},{"text":"つ獲得した！総量："},{"score":{"name":"Skill-Star","objective":"world"},"color":"dark_aqua","bold":true},{"text":"Stars"}]

scoreboard players operation Skill-Star world += temp EXP
scoreboard players operation 00000000-0000-0000-0000-000000000001 world += temp EXP

scoreboard players set temp EXP 0


# execute if score 00000000-0000-0000-0000-000000000001 EXP >= used EXP run function neofunction:player/level/2_exp_to_lvl

playsound minecraft:entity.experience_orb.pickup record @s ~ ~ ~ 1 2





tellraw @s[gamemode=creative] [{"text":"古い処理が呼び出されました！"}]

