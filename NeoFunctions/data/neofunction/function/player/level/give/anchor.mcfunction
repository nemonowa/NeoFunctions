# 命名：anchor
# 説明：スコアの方の経験値を32与える処理
# 説明：skill get 時
# >大体進捗のリワードとして呼び出さられるはずだよ
# =/function neofunction:player/level/give/anchor



# 内容
scoreboard players add @s EXP 32
scoreboard players add @s logAnchor 1

playsound minecraft:entity.experience_orb.pickup record @s ~ ~ ~ 1 2

title @s actionbar [{"text":"経験値：","color":"aqua","bold":true},{"text":"32EXP","color":"dark_aqua"},{"text":"獲得！"}]

function neofunction:system/scoreboard/lvl

execute if score progress_mode temp matches 0 run function neofunction:system/shareadvancement/1


