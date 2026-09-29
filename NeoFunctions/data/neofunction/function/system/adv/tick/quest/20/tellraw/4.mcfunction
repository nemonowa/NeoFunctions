# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/20/tellraw/4


# 内容

data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"text":"？？？"},{"text":">"},{"text":"「まだ見ぬ世界を求める者ならば、その資格を示せ」"}]',Delay:0}
data modify storage neofunction:main_story Talks[-1].Sound set value {Sound:"minecraft:entity.witch.celebrate",Pitch:0.8}


