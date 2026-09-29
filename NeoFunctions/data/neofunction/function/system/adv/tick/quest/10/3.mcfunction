# 命名：2
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/3


# 内容
playsound block.note_block.bell record @a ~ ~ ~ 2.0 2.0
data modify storage neofunction:main_story Talks set value [{Text:'{"text":""}',Delay:20}]
function neofunction:system/adv/tick/quest/10/tellraw/11
data modify storage neofunction:main_story Talks[-1].Delay set value 180
function neofunction:system/adv/tick/quest/10/tellraw/12
data modify storage neofunction:main_story Talks[-1].Delay set value 180
function neofunction:system/adv/tick/quest/10/tellraw/13
data modify storage neofunction:main_story Talks[-1].Delay set value 220
function neofunction:system/adv/tick/quest/10/tellraw/14
data modify storage neofunction:main_story Talks[-1].Delay set value 160
function neofunction:system/adv/tick/quest/10/tellraw/15
data modify storage neofunction:main_story Talks[-1].Delay set value 180
function neofunction:system/adv/tick/quest/10/tellraw/16
data modify storage neofunction:main_story Talks[-1].Delay set value 0
schedule function neofunction:system/adv/tick/quest/10/tellraw/17 56s

execute as @a at @s run function neofunction:asset/event/talk/.neo {Path:"neofunction:main_story Talks"}

#会話進行中かどうかのフラグ
scoreboard players set #temp main_story 4
scoreboard players set #progressing main_story 1