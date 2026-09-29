# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/tellraw/98

# 内容
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/611\\"},limit=1]"},{"text":">"},{"text":"「奴らの狙いは、この海域を縄張りにすることだけじゃない。」"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/611\\"},limit=1]"},{"text":">"},{"text":"「この先に眠る\\"何か\\"を手に入れようとしている。」"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/611\\"},limit=1]"},{"text":">"},{"text":"「詳しいことまでは分からん。」"}]',Delay:0}

data modify storage neofunction:main_story Talks[-1].Sound set value {Sound:"minecraft:neo/asset/story-c1/77",Pitch:1.0}