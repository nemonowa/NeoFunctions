# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/20/tellraw/10


# 内容

data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/102\\"},limit=1]"},{"text":">"},{"text":"「四つの祭壇を巡り、その試練を乗り越えた者には、それぞれの『元素の証』が授けられる。」"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/102\\"},limit=1]"},{"text":">"},{"text":"「その証は、力の証明であると同時に、新たな冒険への扉を開く鍵でもあるわ。」"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/102\\"},limit=1]"},{"text":">"},{"text":"「私も昔、風の祭壇だけは踏破したことがあるわ。」"}]',Delay:0}
data modify storage neofunction:main_story Talks[-1].Sound set value {Sound:"entity.villager.yes",Pitch:0.8}
