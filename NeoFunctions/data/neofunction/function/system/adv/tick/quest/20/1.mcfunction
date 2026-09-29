# 命名：2
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/20/1


# 内容
#シェーラとエキリブリアムの会話を予約

playsound block.note_block.bell record @a ~ ~ ~ 2.0 2.0
data modify storage neofunction:main_story Talks set value [{Text:'{"text":""}',Delay:20}]
function neofunction:system/adv/tick/quest/20/tellraw/1
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/20/tellraw/2
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/20/tellraw/3
data modify storage neofunction:main_story Talks[-1].Delay set value 60
function neofunction:system/adv/tick/quest/20/tellraw/4
data modify storage neofunction:main_story Talks[-1].Delay set value 60
function neofunction:system/adv/tick/quest/20/tellraw/5
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/20/tellraw/6
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/20/tellraw/7
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/20/tellraw/8
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/20/tellraw/9
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/20/tellraw/10
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/20/tellraw/11
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/20/tellraw/12
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/20/tellraw/13
data modify storage neofunction:main_story Talks[-1].Delay set value 0
schedule function neofunction:system/adv/tick/quest/20/tellraw/14 84s
schedule function neofunction:system/adv/tick/quest/main_end 91s append

execute as @a at @s run function neofunction:asset/event/talk/.neo {Path:"neofunction:main_story Talks"}

#会話進行中かどうかのフラグ
scoreboard players set #progressing main_story 1