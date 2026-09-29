# 命名：5
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/10


# 内容
playsound block.note_block.bell record @a ~ ~ ~ 2.0 2.0
data modify storage neofunction:main_story Talks set value [{Text:'{"text":""}',Delay:20}]
function neofunction:system/adv/tick/quest/10/tellraw/44
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/10/tellraw/45
data modify storage neofunction:main_story Talks[-1].Delay set value 215
function neofunction:system/adv/tick/quest/10/tellraw/47
data modify storage neofunction:main_story Talks[-1].Delay set value 220
function neofunction:system/adv/tick/quest/10/tellraw/48
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/10/tellraw/49
data modify storage neofunction:main_story Talks[-1].Delay set value 160
function neofunction:system/adv/tick/quest/10/tellraw/50
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/10/tellraw/51
data modify storage neofunction:main_story Talks[-1].Delay set value 160
function neofunction:system/adv/tick/quest/10/tellraw/52
data modify storage neofunction:main_story Talks[-1].Delay set value 0
schedule function neofunction:system/adv/tick/quest/10/tellraw/53 65s

execute as @a at @s run function neofunction:asset/event/talk/.neo {Path:"neofunction:main_story Talks"}

#会話進行中かどうかのフラグ
scoreboard players set #temp main_story 11
scoreboard players set #progressing main_story 1