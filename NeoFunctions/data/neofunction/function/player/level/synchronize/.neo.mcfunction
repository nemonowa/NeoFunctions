# 命名：.neo
# 説明：経験値取得時の処理。プレイヤー全員が同期して一律にステータスが上がっていく
# >現在停止中。ネザースターを受け取った時に渡されれば動く
# =/function neofunction:player/level/synchronize/.neo


# 内容
execute store result score temp EXP run clear @s minecraft:nether_star

tellraw @s [{"text":"* ","color":"aqua","underlined":true,hover_event:{"action":"show_text","value":[{"text":"説明：新スキル獲得に利用できる経験値。ワールド全体で共有され、利用可能合計数はサイドバーのS-Starで確認できる。"}]}},{"selector":"@s","color":"white"},{"text":" はSkill-Starを"},{"score":{"name":"temp","objective":"EXP"},"color":"dark_aqua","bold":true},{"text":"つ獲得した！総量："},{"score":{"name":"Skill-Star","objective":"world"},"color":"dark_aqua","bold":true},{"text":"Stars"}]

scoreboard players operation Skill-Star world += temp EXP

scoreboard players set temp EXP 0

execute if score 00000000-0000-0000-0000-000000000001 EXP >= used EXP run function neofunction:player/level/synchronize/neo

advancement revoke @s only neofunction:inventory_changed/star

playsound minecraft:entity.experience_orb.pickup record @s ~ ~ ~ 1 2