# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/20/tellraw/34


# 内容

data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/102\\"},limit=1]"},{"text":">"},{"text":"「彼は四元素すべての加護を自在に操る。」"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/102\\"},limit=1]"},{"text":">"},{"text":"「これまでの祭壇とは、比べものにならない試練になるでしょう。」"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/102\\"},limit=1]"},{"text":">"},{"text":"「……でも、焦る必要はないわ。」"}]',Delay:0}
data modify storage neofunction:main_story Talks[-1].Sound set value {Sound:"entity.villager.yes",Pitch:0.8}
data modify storage neofunction:main_story Talks[-1].Sound set value {Sound:"entity.villager.yes",Pitch:0.8}
