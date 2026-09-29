# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/20/tellraw/44


# 内容

data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/102\\"},limit=1]"},{"text":">"},{"text":"「これは約束の品。」"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/102\\"},limit=1]"},{"text":">"},{"text":"「『セレスティアルクリスタル』よ。」"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/102\\"},limit=1]"},{"text":">"},{"text":"「試練を乗り越えた証として、受け取って。」"}]',Delay:0}

data modify storage neofunction:main_story Talks[-1].Command set value "execute as @e[nbt={DeathLootTable:\"neofunction:asset/summon/102\"}] at @s unless entity @e[type=item_display,distance=..3] run summon item_display ~-1 ~0.5 ~1 {Glowing:1b,Rotation:[-9.84375F,0F],Tags:[\"fly2\"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:\"minecraft:redstone_block\",Count:1b,tag:{display:{Name:'{\\\"text\\\":\\\"minecraft:item/3d/104\\\",\\\"color\\\":\\\"yellow\\\",\\\"italic\\\":false}'},CustomModelData:1666}}}"


data modify storage neofunction:main_story Talks[-1].Sound set value {Sound:"entity.villager.yes",Pitch:0.8}
