# 命名：6
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/6


# 内容
playsound block.note_block.bell record @a ~ ~ ~ 2.0 2.0
data modify storage neofunction:main_story Talks set value [{Text:'{"text":""}',Delay:20}]
function neofunction:system/adv/tick/quest/10/tellraw/24
data modify storage neofunction:main_story Talks[-1].Delay set value 300
function neofunction:system/adv/tick/quest/10/tellraw/25
data modify storage neofunction:main_story Talks[-1].Delay set value 100
function neofunction:system/adv/tick/quest/10/tellraw/26
data modify storage neofunction:main_story Talks[-1].Delay set value 100
function neofunction:system/adv/tick/quest/10/tellraw/27
data modify storage neofunction:main_story Talks[-1].Delay set value 120
function neofunction:system/adv/tick/quest/10/tellraw/28
data modify storage neofunction:main_story Talks[-1].Delay set value 100
function neofunction:system/adv/tick/quest/10/tellraw/29
data modify storage neofunction:main_story Talks[-1].Delay set value 100
function neofunction:system/adv/tick/quest/10/tellraw/30
data modify storage neofunction:main_story Talks[-1].Delay set value 0
schedule function neofunction:system/adv/tick/quest/10/tellraw/31 50s

execute as @a at @s run function neofunction:asset/event/talk/.neo {Path:"neofunction:main_story Talks"}

#会話進行中かどうかのフラグ
scoreboard players set #temp main_story 7
scoreboard players set #progressing main_story 1