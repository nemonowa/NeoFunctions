# 命名：439
# 説明：【追加：2026-10-09 ルブラ編】第三章「零の揺籃」の終わり。進み具合 439（終章「星還りの夜」は 440 から。まだ作っていない）。ミラは館へ戻る
# 実行条件：実行者 プレイヤー（会話の最後の Command。438 のときだけ進める）
# >/function neofunction:system/adv/tick/quest/40/d3/438（会話の Command）
# =/function neofunction:system/adv/tick/quest/40/d3/439

# 内容
# 【変更：2026-10-14】章ごとの「メインクエストを達成した」の表示はやめた（ルブラ編は終章 449 でまとめて 1 つのメインクエストとして達成）
execute unless score #temp main_story matches 438 run return 0
scoreboard players set #temp main_story 439
data remove storage neofunction:rubra busy
# 【追加：2026-10-09】揺籃の底から、近くの人をみな塔の一階へ（セレンの星読みの光で）
tag @a[distance=..64] add rubra_up
execute as @e[type=marker,tag=rubra_mira_tower,limit=1] at @s run tp @a[tag=rubra_up] ~ ~ ~
execute as @a[tag=rubra_up] at @s run particle minecraft:end_rod ~ ~1 ~ 0.4 1 0.4 0.05 40 normal
tellraw @a[tag=rubra_up] {"text":"セレンの指先から、細い星の光がのびた。光に包まれて、気がつくと星見の塔の一階に立っていた。","color":"#A8D8FF","italic":true}
tag @a remove rubra_up
execute as @e[type=marker,tag=rubra_mira_kan,limit=1] at @s run tp @e[type=villager,tag=rubra_mira] ~ ~ ~ ~ ~
execute as @e[type=marker,tag=rubra_ordo_tower,limit=1] at @s run tp @e[type=villager,tag=rubra_ordo] 959.5 44 3271.5 90 0
# 【追加：2026-10-09】この章で使い終わった目印・残骸を片付ける
function neofunction:system/rubra/tidy_d3
# 【追加：2026-10-14】塔の一階の床石を閉じ直す（第三章はここで終わり。開いたままにしない）
function neofunction:system/rubra/d3/hatch_close
