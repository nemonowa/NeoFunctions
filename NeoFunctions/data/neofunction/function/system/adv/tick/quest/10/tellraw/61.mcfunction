# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/tellraw/61


# 内容
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[type=minecraft:armor_stand,tag=event]"},{"text":">"},{"text":"「応戦はしました……。」"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[type=minecraft:armor_stand,tag=event]"},{"text":">"},{"text":"「俺は気を失って……。」"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[type=minecraft:armor_stand,tag=event]"},{"text":">"},{"text":"「目が覚めたら……。」"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[type=minecraft:armor_stand,tag=event]"},{"text":">"},{"text":"「連れて行かれていました……。」"}]',Delay:0}



