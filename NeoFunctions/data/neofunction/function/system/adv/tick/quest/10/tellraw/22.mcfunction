# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/tellraw/22


# 内容

data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/101\\"},limit=1]"},{"text":">"},{"text":"「売ろうと、食べようと、料理に使おうと、お前さんの好きにしてくれ！」"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/101\\"},limit=1]"},{"text":">"},{"text":"「……ああ、収穫したら次の奴のために植え直すのだけは忘れないでくれよ？」"}]',Delay:0}
data modify storage neofunction:main_story Talks[-1].Sound set value {Sound:"minecraft:neo/asset/story-c1/17",Pitch:1.0}
