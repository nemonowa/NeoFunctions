# 命名：2
# 説明：スコアの方の経験値を8与える処理
# 説明：entity発見時
# 説明：https://docs.google.com/spreadsheets/d/1oRn_1tbEpzJEsyvsKct2pbeRSbK9n8WjXLdGHn6SC50/edit?gid=429073876#gid=429073876&range=W11
# >大体進捗のリワードとして呼び出さられるはずだよ
# =/function neofunction:player/level/give/entity/2



# 内容
scoreboard players add @s EXP 8
scoreboard players add @s logEntity 1

playsound minecraft:entity.experience_orb.pickup record @s ~ ~ ~ 1 2

title @s actionbar [{"text":"経験値：","color":"aqua","bold":true},{"text":"8EXP","color":"dark_aqua"},{"text":"獲得！"}]



function neofunction:system/scoreboard/lvl
execute if score progress_mode temp matches 0 run function neofunction:system/shareadvancement/1


