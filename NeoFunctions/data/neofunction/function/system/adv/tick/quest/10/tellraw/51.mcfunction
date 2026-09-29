# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/tellraw/51


# 内容
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/101\\"},limit=1]"},{"text":">"},{"text":"「まぁ、お前さんを怖がらせたい訳じゃない。」"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/101\\"},limit=1]"},{"text":">"},{"text":"「この辺りで活動するなら、知っておいた方がいいと思って話しただけだ。」"}]',Delay:0}
data modify storage neofunction:main_story Talks[-1].Sound set value {Sound:"minecraft:neo/asset/story-c1/40",Pitch:1.0}








