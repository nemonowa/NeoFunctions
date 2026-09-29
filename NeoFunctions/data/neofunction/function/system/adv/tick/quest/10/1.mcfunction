# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/1


# 内容
#ビリーの会話を予約

playsound block.note_block.bell record @a ~ ~ ~ 2.0 2.0
data modify storage neofunction:main_story Talks set value [{Text:'{"text":""}',Delay:20}]
function neofunction:system/adv/tick/quest/10/tellraw/1
data modify storage neofunction:main_story Talks[-1].Delay set value 120
function neofunction:system/adv/tick/quest/10/tellraw/2
data modify storage neofunction:main_story Talks[-1].Delay set value 100
function neofunction:system/adv/tick/quest/10/tellraw/3
data modify storage neofunction:main_story Talks[-1].Delay set value 100
function neofunction:system/adv/tick/quest/10/tellraw/4
data modify storage neofunction:main_story Talks[-1].Delay set value 100
data modify storage neofunction:main_story Talks[-1].Delay set value 0
schedule function neofunction:system/adv/tick/quest/10/tellraw/6 30s

execute as @a at @s run function neofunction:asset/event/talk/.neo {Path:"neofunction:main_story Talks"}

#会話進行中かどうかのフラグ
scoreboard players set #temp main_story 2
scoreboard players set #progressing main_story 1