# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/tellraw/16


# 内容

data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/101\\"},limit=1]"},{"text":">"},{"text":"「あそこでは、この辺りで採れるベリーを使った品や、ベリーに関係するものを取り扱ってる。」"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/101\\"},limit=1]"},{"text":">"},{"text":"「どっちも気軽に立ち寄れる店だから、時間がある時にでも覗いてみるといい。」"}]',Delay:0}
data modify storage neofunction:main_story Talks[-1].Sound set value {Sound:"minecraft:neo/asset/story-c1/13",Pitch:1.0}


