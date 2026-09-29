# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/tellraw/95

# 内容
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/611\\"},limit=1]"},{"text":">"},{"text":"「……話は後だ。」"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/611\\"},limit=1]"},{"text":">"},{"text":"「ここは奴らの縄張りだ。」"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/611\\"},limit=1]"},{"text":">"},{"text":"「まずはここを出るぞ。」"}]',Delay:0}

execute in neodimension:ceresta_festa run forceload add 921 1052

data modify storage neofunction:main_story Talks[-1].Sound set value {Sound:"minecraft:neo/asset/story-c1/75",Pitch:1.0}
