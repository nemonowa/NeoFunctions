# 命名：5
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/15


# 内容
playsound block.note_block.bell record @a ~ ~ ~ 2.0 2.0
data modify storage neofunction:main_story Talks set value [{Text:'{"text":""}',Delay:20}]
function neofunction:system/adv/tick/quest/10/tellraw/83
data modify storage neofunction:main_story Talks[-1].Delay set value 150
function neofunction:system/adv/tick/quest/10/tellraw/84
data modify storage neofunction:main_story Talks[-1].Delay set value 200
function neofunction:system/adv/tick/quest/10/tellraw/85
data modify storage neofunction:main_story Talks[-1].Delay set value 180
function neofunction:system/adv/tick/quest/10/tellraw/86
data modify storage neofunction:main_story Talks[-1].Delay set value 180
function neofunction:system/adv/tick/quest/10/tellraw/87
data modify storage neofunction:main_story Talks[-1].Delay set value 180
function neofunction:system/adv/tick/quest/10/tellraw/88
data modify storage neofunction:main_story Talks[-1].Delay set value 180
function neofunction:system/adv/tick/quest/10/tellraw/89
data modify storage neofunction:main_story Talks[-1].Delay set value 180
function neofunction:system/adv/tick/quest/10/tellraw/90
data modify storage neofunction:main_story Talks[-1].Delay set value 0
schedule function neofunction:system/adv/tick/quest/10/tellraw/91 67s

execute as @a at @s run function neofunction:asset/event/talk/.neo {Path:"neofunction:main_story Talks"}

#会話進行中かどうかのフラグ
scoreboard players set #temp main_story 16
scoreboard players set #progressing main_story 1