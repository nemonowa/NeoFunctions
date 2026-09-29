# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/tellraw/15


# 内容

data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/101\\"},limit=1]"},{"text":">"},{"text":"「冒険の合間に腹ごしらえをするなら、世話になることも多いだろう。」"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/101\\"},limit=1]"},{"text":">"},{"text":"「それと、その裏手にある緑色の屋台も見えるか？」"}]',Delay:0}
data modify storage neofunction:main_story Talks[-1].Sound set value {Sound:"minecraft:neo/asset/story-c1/12",Pitch:1.0}


