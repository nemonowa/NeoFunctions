# 命名：6
# 説明：スコアの方の経験値を12与える処理
# >大体進捗のリワードとして呼び出さられるはずだよ
# =/function neofunction:player/level/give/item/6


# 内容
scoreboard players add @s EXP 12
scoreboard players add @s logItem 1

playsound minecraft:entity.experience_orb.pickup record @s ~ ~ ~ 1 2

title @s actionbar [{"text":"経験値：","color":"aqua","bold":true},{"text":"12EXP","color":"dark_aqua"},{"text":"獲得！"}]


#tellraw @s [{"text":"","color":"white",hover_event:{"action":"show_text","value":[{"text":"説明：レベルを向上し、ステータスを強化するための経験値。各自の進捗を達成することで獲得可能で、現在のレベルはタブボタンで表示されるスコアボードから確認できる。"}]}},{"selector":"@s"},{"text":"は"},{"text":"経験値","color":"aqua","bold":true,"underlined":true},{"text":"を"},{"text":"8EXP","color":"aqua","bold":true},{"text":"獲得した！"}]



function neofunction:system/scoreboard/lvl
execute if score progress_mode temp matches 0 run function neofunction:system/shareadvancement/1


