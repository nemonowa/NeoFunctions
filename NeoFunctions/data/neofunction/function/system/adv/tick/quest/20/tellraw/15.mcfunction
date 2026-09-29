# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/20/tellraw/15


# 内容

data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/102\\"},limit=1]"},{"text":">"},{"text":"「さあ、ここがこの牧場の厩舎よ。"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/102\\"},limit=1]"},{"text":">"},{"text":"「この子たちは、私たちが代々育ててきた自慢の馬たち。」"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/102\\"},limit=1]"},{"text":">"},{"text":"「長旅にも耐えられる丈夫さと、主人を信じて最後まで駆け抜ける賢さを持っているわ。」"}]',Delay:0}
data modify storage neofunction:main_story Talks[-1].Sound set value {Sound:"entity.villager.yes",Pitch:0.8}
