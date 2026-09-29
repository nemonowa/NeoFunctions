# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/20/tellraw/45


# 内容

data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/102\\"},limit=1]"},{"text":">"},{"text":"「このクリスタルは、この世界を巡る旅人にとって、とても大切なもの。」"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/102\\"},limit=1]"},{"text":">"},{"text":"「きっと、これから先もあなたの旅を支えてくれるはずよ。」"}]',Delay:0}

data modify storage neofunction:main_story Talks[-1].Sound set value {Sound:"entity.villager.yes",Pitch:0.8}
