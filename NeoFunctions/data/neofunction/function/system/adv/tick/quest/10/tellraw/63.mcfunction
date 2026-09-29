# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/tellraw/63


# 内容
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[type=minecraft:armor_stand,tag=event]"},{"text":">"},{"text":"「あいつら……。」"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[type=minecraft:armor_stand,tag=event]"},{"text":">"},{"text":"「\\"鍛冶屋は生かして連れて行け\\"って……。」"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[type=minecraft:armor_stand,tag=event]"},{"text":">"},{"text":"「あと……。」"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[type=minecraft:armor_stand,tag=event]"},{"text":">"},{"text":"「\\"スカルリメインへ運べ\\"って……。」"}]',Delay:0}



