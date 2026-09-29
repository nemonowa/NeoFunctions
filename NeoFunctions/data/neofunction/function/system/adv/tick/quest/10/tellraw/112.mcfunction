# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/tellraw/112

# 内容
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/101\\"},limit=1]"},{"text":">"},{"text":"「「サラザール」のいる場所へ辿り着くには、それが必要なんだろう。」"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/101\\"},limit=1]"},{"text":">"},{"text":"「まずは青の解結晶を見つけろ。」"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/101\\"},limit=1]"},{"text":">"},{"text":"「巨大な骸骨の口の中……だったな。」"}]',Delay:0}

data modify storage neofunction:main_story Talks[-1].Sound set value {Sound:"minecraft:neo/asset/story-c1/89",Pitch:1.0}