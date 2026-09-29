# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/20/tellraw/5


# 内容

data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"text":"？？？"},{"text":">"},{"text":"「我は、均衡の果てで待つ」"}]',Delay:0}
data modify storage neofunction:main_story Talks[-1].Sound set value {Sound:"minecraft:entity.witch.celebrate",Pitch:0.8}

