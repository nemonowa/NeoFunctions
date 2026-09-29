# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/20/tellraw/3


# 内容

data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"text":"？？？"},{"text":">"},{"text":"「異邦人よ」"}]',Delay:0}
data modify storage neofunction:main_story Talks[-1].Sound set value {Sound:"minecraft:entity.witch.celebrate",Pitch:0.8}
data modify storage neofunction:main_story Talks[-1].Command set value "effect give @s minecraft:blindness 10 126"