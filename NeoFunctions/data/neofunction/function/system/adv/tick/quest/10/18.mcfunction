# 命名：5
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/18


# 内容
playsound block.note_block.bell record @a ~ ~ ~ 2.0 2.0
data modify storage neofunction:main_story Talks set value [{Text:'{"text":""}',Delay:20}]
function neofunction:system/adv/tick/quest/10/tellraw/115
data modify storage neofunction:main_story Talks[-1].Delay set value 100
function neofunction:system/adv/tick/quest/10/tellraw/116
data modify storage neofunction:main_story Talks[-1].Delay set value 100
function neofunction:system/adv/tick/quest/10/tellraw/117
data modify storage neofunction:main_story Talks[-1].Delay set value 180
function neofunction:system/adv/tick/quest/10/tellraw/118
data modify storage neofunction:main_story Talks[-1].Delay set value 180
function neofunction:system/adv/tick/quest/10/tellraw/119
data modify storage neofunction:main_story Talks[-1].Delay set value 100
function neofunction:system/adv/tick/quest/10/tellraw/120
data modify storage neofunction:main_story Talks[-1].Delay set value 180
function neofunction:system/adv/tick/quest/10/tellraw/121
data modify storage neofunction:main_story Talks[-1].Delay set value 220
function neofunction:system/adv/tick/quest/10/tellraw/122
data modify storage neofunction:main_story Talks[-1].Delay set value 100
function neofunction:system/adv/tick/quest/10/tellraw/123
data modify storage neofunction:main_story Talks[-1].Delay set value 100
function neofunction:system/adv/tick/quest/10/tellraw/124
data modify storage neofunction:main_story Talks[-1].Delay set value 100
function neofunction:system/adv/tick/quest/10/tellraw/125
data modify storage neofunction:main_story Talks[-1].Delay set value 100
function neofunction:system/adv/tick/quest/10/tellraw/127
data modify storage neofunction:main_story Talks[-1].Delay set value 0
schedule function neofunction:system/adv/tick/quest/10/tellraw/126 85s
schedule function neofunction:system/adv/tick/quest/10/tellraw/120-1 35s

schedule function neofunction:system/adv/tick/quest/main_end 90s append

execute as @a at @s run function neofunction:asset/event/talk/.neo {Path:"neofunction:main_story Talks"}

# 会話進行中フラグ
scoreboard players set #progressing main_story 1