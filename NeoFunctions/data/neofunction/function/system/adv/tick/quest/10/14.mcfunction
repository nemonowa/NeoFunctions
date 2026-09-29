# 命名：5
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/14


# 内容
playsound block.note_block.bell record @a ~ ~ ~ 2.0 2.0
data modify storage neofunction:main_story Talks set value [{Text:'{"text":""}',Delay:20}]
function neofunction:system/adv/tick/quest/10/tellraw/78
data modify storage neofunction:main_story Talks[-1].Delay set value 150
function neofunction:system/adv/tick/quest/10/tellraw/79
data modify storage neofunction:main_story Talks[-1].Delay set value 190
function neofunction:system/adv/tick/quest/10/tellraw/80
data modify storage neofunction:main_story Talks[-1].Delay set value 200
function neofunction:system/adv/tick/quest/10/tellraw/81
data modify storage neofunction:main_story Talks[-1].Delay set value 0
schedule function neofunction:system/adv/tick/quest/10/tellraw/82 40s

execute as @a at @s run function neofunction:asset/event/talk/.neo {Path:"neofunction:main_story Talks"}

#会話進行中かどうかのフラグ
scoreboard players set #temp main_story 15
scoreboard players set #progressing main_story 1