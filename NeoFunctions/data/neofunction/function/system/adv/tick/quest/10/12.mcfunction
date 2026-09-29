# 命名：5
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/12


# 内容
playsound block.note_block.bell record @a ~ ~ ~ 2.0 2.0
data modify storage neofunction:main_story Talks set value [{Text:'{"text":""}',Delay:20}]
function neofunction:system/adv/tick/quest/10/tellraw/58
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/10/tellraw/59
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/10/tellraw/60
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/10/tellraw/61
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/10/tellraw/62
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/10/tellraw/63
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/10/tellraw/64
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/10/tellraw/65
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/10/tellraw/66
data modify storage neofunction:main_story Talks[-1].Delay set value 0
schedule function neofunction:system/adv/tick/quest/10/tellraw/67 64s

execute as @a at @s run function neofunction:asset/event/talk/.neo {Path:"neofunction:main_story Talks"}

#会話進行中かどうかのフラグ
scoreboard players set #temp main_story 13
scoreboard players set #progressing main_story 1