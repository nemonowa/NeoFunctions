# 命名：4
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/20/3


# 内容
playsound block.note_block.bell record @a ~ ~ ~ 2.0 2.0
data modify storage neofunction:main_story Talks set value [{Text:'{"text":""}',Delay:20}]
function neofunction:system/adv/tick/quest/20/tellraw/27
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/20/tellraw/28
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/20/tellraw/29
data modify storage neofunction:main_story Talks[-1].Delay set value 0
schedule function neofunction:system/adv/tick/quest/20/tellraw/30 22s

schedule function neofunction:system/adv/tick/quest/main_end 25s append

execute as @a at @s run function neofunction:asset/event/talk/.neo {Path:"neofunction:main_story Talks"}

#会話進行中かどうかのフラグ
scoreboard players set #progressing main_story 1