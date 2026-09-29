# 命名：13
# 説明：（説明未記載）
# >/このファンクションはfunction neofunction:system/adv/tick/quest/30/numberまたは汎用会話モジュールのCommandから叩かれています。ご確認ください。
# =/function neofunction:system/adv/tick/quest/30/tellraw/13

#発光を解除する。
effect clear @s minecraft:glowing

execute in neodimension:ceresta_festa positioned 705 42 2140 run function neofunction:asset/summon/684
execute in neodimension:ceresta_festa positioned 712 42 2137 facing entity @p eyes run tp @e[distance=..1,type=zombie,sort=nearest,limit=1] ~ ~ ~ ~ ~
execute in neodimension:ceresta_festa positioned 705 42 2140 run data merge entity @e[distance=..1,type=zombie,limit=1] {NoAI:1b}
execute in neodimension:ceresta_festa positioned 705 42 2140 run data merge entity @e[distance=..1,type=frog,limit=1] {NoAI:1b}

data modify storage neofunction:main_story Talks set value [{Text:'[{"text":"<"},{"text":"ストライカーガエル","color":"dark_green","bold":true,"italic":false},{"text":">"},{"text":"「ゲホッ...ゲコッ...」"}]',Sound:{Sound:"entity.frog.death",Pitch:1.2}},{Text:'[{"text":"<"},{"text":"ストライカーガエル","color":"dark_green","bold":true,"italic":false},{"text":">"},{"text":"「やるな、人間ども……。だが、我らを数体倒したところで、何も変わりはせんケロ……。」"}]',Sound:{Sound:"entity.frog.death",Pitch:1.2}},{Text:'[{"text":"<"},{"text":"ストライカーガエル","color":"dark_green","bold":true,"italic":false},{"text":">"},{"text":"「地下道のさらに深く……昏き(くらき)水脈の底で、我が主がすべてを見届けておられるケロ。」"}]',Sound:{Sound:"entity.frog.death",Pitch:1.2}},{Text:'[{"text":"<"},{"text":"ストライカーガエル","color":"dark_green","bold":true,"italic":false},{"text":">"},{"text":"「『フェスタ』の日に、この町はすべてあの御方の胃袋に収まるのだケロ...。」"}]',Sound:{Sound:"entity.frog.death",Pitch:1.2}},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「フェスタ...?主...?やはり、私の予想は当たっていましたぞ。」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2},Command:"execute in neodimension:ceresta_festa positioned 705 42 2140 run tag @e[tag=enemy,distance=..2] add del"},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「フェスタの日にカエルの大群が襲ってきて、ルクスイーファを食い尽くすつもりですぞ！」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2}},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「旅の御方...フェスタの日はもうすぐそこ...時間は長くないでございますぞ。」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2}},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「この戦闘でカエルの生態もおおよそ分かったことですし、やはりあなたに、カエルの主を直接討っていただく必要がありまするな...。」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2}},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「この町に、ミラベルとニラいう防具職人がございます。」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2}},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「さきほどカエルを倒して得た素材を渡して、カエル対策専用防具を作って頂きましょうぞ！」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2},Command:"schedule function neofunction:system/adv/tick/quest/30/tellraw/14 5s"}]
execute as @a at @s run function neofunction:asset/event/talk/.neo {Path:"neofunction:main_story Talks"} 



