# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/20/tellraw/33


# 内容

data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/102\\"},limit=1]"},{"text":">"},{"text":"「あれは、挑戦者として認められるための試練」"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/102\\"},limit=1]"},{"text":">"},{"text":"「そして、その先に待つのがーー」"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/102\\"},limit=1]"},{"text":">"},{"text":"「四元素を束ねる司教、エキリブリアム。」"}]',Delay:0}
data modify storage neofunction:main_story Talks[-1].Sound set value {Sound:"entity.villager.yes",Pitch:0.8}
data modify storage neofunction:main_story Talks[-1].Sound set value {Sound:"entity.villager.yes",Pitch:0.8}
