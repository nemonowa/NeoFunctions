# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/tellraw/94

# 内容
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/611\\"},limit=1]"},{"text":">"},{"text":"「本当は自分で来たいだろうにな。」"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/611\\"},limit=1]"},{"text":">"},{"text":"「野営地を空けられねぇ以上、お前に託すしかなかった……そういうことか。」"}]',Delay:0}

data modify storage neofunction:main_story Talks[-1].Sound set value {Sound:"minecraft:neo/asset/story-c1/74",Pitch:1.0}
