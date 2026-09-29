# 命名：5
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/9


# 内容
playsound block.note_block.bell record @a ~ ~ ~ 2.0 2.0
data modify storage neofunction:main_story Talks set value [{Text:'{"text":""}',Delay:20}]
function neofunction:system/adv/tick/quest/10/tellraw/38
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/10/tellraw/39
data modify storage neofunction:main_story Talks[-1].Delay set value 250
function neofunction:system/adv/tick/quest/10/tellraw/40
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/10/tellraw/41
data modify storage neofunction:main_story Talks[-1].Delay set value 200
function neofunction:system/adv/tick/quest/10/tellraw/42
schedule function neofunction:system/adv/tick/quest/10/tellraw/42-1 40s
data modify storage neofunction:main_story Talks[-1].Delay set value 0
schedule function neofunction:system/adv/tick/quest/10/tellraw/43 50s

execute as @a at @s run function neofunction:asset/event/talk/.neo {Path:"neofunction:main_story Talks"}

#会話進行中かどうかのフラグ
scoreboard players set #temp main_story 10
scoreboard players set #progressing main_story 1