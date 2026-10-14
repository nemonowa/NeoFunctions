# 命名：423_end
# 説明：【追加：2026-10-09 ルブラ編】手まり歌のあと：泉が弱って滝が細くなり（fall_thin）、裏の扉が見える（424）。ミラは聖堂の入口の広間へ先に入る
# 実行条件：実行者 プレイヤー（会話の最後の Command。423 のときだけ進める）
# >/function neofunction:system/adv/tick/quest/40/d2/423（会話の Command）
# =/function neofunction:system/adv/tick/quest/40/d2/423_end

# 内容
data remove storage neofunction:rubra busy
execute unless score #temp main_story matches 423 run return 0
scoreboard players set #temp main_story 424
execute in neodimension:ceresta_festa run function neofunction:system/rubra/d2/fall_thin
execute as @e[type=marker,tag=rubra_mira_w1,limit=1] at @s run tp @e[type=villager,tag=rubra_mira] ~ ~ ~ ~ ~
tellraw @a[distance=..48] {"text":"館のいちばん奥の北の壁。空色の帯の真ん中に、一枚だけ水の流れのような模様のタイルがある。耳を当てると、かすかに水の音がする――滝の裏へ続いているのかもしれない。","color":"#7FD8FF","italic":true}
tellraw @a[distance=..48] [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"水守の館の北の壁の模様のタイルから、地下の通り道を通って聖堂へ","color":"white","bold":true,"italic":false,"underlined":false}]
