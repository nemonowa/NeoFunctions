# 命名：5
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/17


# 内容
playsound block.note_block.bell record @a ~ ~ ~ 2.0 2.0
data modify storage neofunction:main_story Talks set value [{Text:'{"text":""}',Delay:20}]
function neofunction:system/adv/tick/quest/10/tellraw/97
data modify storage neofunction:main_story Talks[-1].Delay set value 180
function neofunction:system/adv/tick/quest/10/tellraw/98
data modify storage neofunction:main_story Talks[-1].Delay set value 200
function neofunction:system/adv/tick/quest/10/tellraw/99
data modify storage neofunction:main_story Talks[-1].Delay set value 200
function neofunction:system/adv/tick/quest/10/tellraw/100
data modify storage neofunction:main_story Talks[-1].Delay set value 200
function neofunction:system/adv/tick/quest/10/tellraw/101
data modify storage neofunction:main_story Talks[-1].Delay set value 200
function neofunction:system/adv/tick/quest/10/tellraw/102
data modify storage neofunction:main_story Talks[-1].Delay set value 200
function neofunction:system/adv/tick/quest/10/tellraw/104
data modify storage neofunction:main_story Talks[-1].Delay set value 100
function neofunction:system/adv/tick/quest/10/tellraw/105
#data modify storage neofunction:main_story Talks[-1].Delay set value 100
#function neofunction:system/adv/tick/quest/10/tellraw/106
data modify storage neofunction:main_story Talks[-1].Delay set value 100
function neofunction:system/adv/tick/quest/10/tellraw/107
data modify storage neofunction:main_story Talks[-1].Delay set value 100
function neofunction:system/adv/tick/quest/10/tellraw/108
data modify storage neofunction:main_story Talks[-1].Delay set value 200
function neofunction:system/adv/tick/quest/10/tellraw/109
data modify storage neofunction:main_story Talks[-1].Delay set value 200
function neofunction:system/adv/tick/quest/10/tellraw/110
data modify storage neofunction:main_story Talks[-1].Delay set value 260
function neofunction:system/adv/tick/quest/10/tellraw/111
data modify storage neofunction:main_story Talks[-1].Delay set value 200
function neofunction:system/adv/tick/quest/10/tellraw/112
data modify storage neofunction:main_story Talks[-1].Delay set value 200
function neofunction:system/adv/tick/quest/10/tellraw/113
data modify storage neofunction:main_story Talks[-1].Delay set value 0
schedule function neofunction:system/adv/tick/quest/10/tellraw/105-1 66s
schedule function neofunction:system/adv/tick/quest/10/tellraw/114 133s

execute as @a at @s run function neofunction:asset/event/talk/.neo {Path:"neofunction:main_story Talks"}

#会話進行中かどうかのフラグ
scoreboard players set #temp main_story 18
scoreboard players set #progressing main_story 1