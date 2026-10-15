# 命名：421_end
# 説明：会議の終わり：オルド「下がりなさい、ミラ」。ミラは館を出て湖のほとりへ。次はカシム
# 実行条件：実行者 プレイヤー（会話の最後の Command）
# >/function neofunction:system/adv/tick/quest/40/d2/choice_a_mira（会話の Command）
# >/function neofunction:system/adv/tick/quest/40/d2/choice_a_ordo（会話の Command）
# >/function neofunction:system/adv/tick/quest/40/d2/choice_a_quiet（会話の Command）
# =/function neofunction:system/adv/tick/quest/40/d2/421_end

# 内容
data remove storage neofunction:rubra busy
tellraw @s [{"text":"<"},{"text":"オルド","color":"#4A7BD0","bold":true},{"text":"> 「……下がりなさい、ミラ」"}]
tellraw @s {"text":"ミラは唇を噛み、くるりと背を向けて館を出ていった。","color":"gray","italic":true}
# ミラは湖のほとりへ（目印 rubra_mira_lake：カシムから 6 マス以上離れた所）
execute as @e[type=marker,tag=rubra_mira_lake,limit=1] at @s run tp @e[type=villager,tag=rubra_mira] ~ ~ ~ ~ ~
tellraw @s [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"夜の湖のほとりへ。隊商の長カシムに話しかける","color":"white","bold":true,"italic":false,"underlined":false}]
