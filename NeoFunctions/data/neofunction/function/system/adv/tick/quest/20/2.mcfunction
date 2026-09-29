# 命名：2
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/20/2


# 内容
#シェーラとエキリブリアムの会話を予約

playsound block.note_block.bell record @a ~ ~ ~ 2.0 2.0
data modify storage neofunction:main_story Talks set value [{Text:'{"text":""}',Delay:20}]
function neofunction:system/adv/tick/quest/20/tellraw/15
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/20/tellraw/16
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/20/tellraw/17
data modify storage neofunction:main_story Talks[-1].Delay set value 60
function neofunction:system/adv/tick/quest/20/tellraw/18
data modify storage neofunction:main_story Talks[-1].Delay set value 60
function neofunction:system/adv/tick/quest/20/tellraw/19
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/20/tellraw/20
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/20/tellraw/21
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/20/tellraw/22
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/20/tellraw/23
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/20/tellraw/24
data modify storage neofunction:main_story Talks[-1].Delay set value 140
function neofunction:system/adv/tick/quest/20/tellraw/25
data modify storage neofunction:main_story Talks[-1].Delay set value 0
schedule function neofunction:system/adv/tick/quest/20/tellraw/26 70s
schedule function neofunction:system/adv/tick/quest/main_end 77s append

execute as @a at @s run function neofunction:asset/event/talk/.neo {Path:"neofunction:main_story Talks"}

#会話進行中かどうかのフラグ
scoreboard players set #progressing main_story 1