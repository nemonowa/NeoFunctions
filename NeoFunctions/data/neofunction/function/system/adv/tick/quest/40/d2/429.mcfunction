# 命名：429
# 説明：第二章「涸れ泉の聖堂」の終わり。進み具合 429（第三章「零の揺籃」は 430 から。まだ作っていない）
# 実行条件：実行者 プレイヤー（会話の最後の Command。428 のときだけ進める）
# >/function neofunction:system/adv/tick/quest/40/d2/tear（会話の Command）
# =/function neofunction:system/adv/tick/quest/40/d2/429

# 内容
execute unless score #temp main_story matches 428 run return 0
scoreboard players set #temp main_story 429
data remove storage neofunction:rubra busy
# ミラは館の前（桟橋）へ戻る（第三章は、ミラに話しかけて始まる）
execute as @e[type=marker,tag=rubra_mira_kan,limit=1] at @s run tp @e[type=villager,tag=rubra_mira] ~ ~ ~ ~ ~
# この章で使い終わった目印・残骸を片付ける
function neofunction:system/rubra/tidy_d2
