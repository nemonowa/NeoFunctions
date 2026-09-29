# 命名：11
# 説明：（説明未記載）
# >/このファンクションはfunction neofunction:system/adv/tick/quest/30/numberまたは汎用会話モジュールのCommandから叩かれています。ご確認ください。
# =/function neofunction:system/adv/tick/quest/30/tellraw/11

execute in neodimension:ceresta_festa positioned 712 42 2137 run function neofunction:asset/summon/684
execute in neodimension:ceresta_festa positioned 712 42 2137 facing entity @p eyes run tp @e[distance=..1,type=zombie,sort=nearest,limit=1] ~ ~ ~ ~ ~
execute in neodimension:ceresta_festa positioned 712 42 2137 run data merge entity @e[distance=..1,type=zombie,sort=nearest,limit=1] {NoAI:1b}
execute in neodimension:ceresta_festa positioned 712 42 2137 run data merge entity @e[distance=..1,type=zombie,sort=nearest,limit=1] {Invulnerable:1b}
execute in neodimension:ceresta_festa positioned 712 42 2137 run data merge entity @e[distance=..1,type=frog,sort=nearest,limit=1] {NoAI:1b}
execute in neodimension:ceresta_festa positioned 712 42 2137 run data merge entity @e[distance=..1,type=frog,sort=nearest,limit=1] {Invulnerable:1b}

execute in neodimension:ceresta_festa positioned 713 42 2137 run function neofunction:asset/summon/685
execute in neodimension:ceresta_festa positioned 713 42 2137 facing entity @p eyes run tp @e[distance=..1,type=skeleton,sort=nearest,limit=1] ~ ~ ~ ~ ~
execute in neodimension:ceresta_festa positioned 713 42 2137 run data merge entity @e[distance=..1,type=skeleton,sort=nearest,limit=1] {NoAI:1b}
execute in neodimension:ceresta_festa positioned 713 42 2137 run data merge entity @e[distance=..1,type=skeleton,sort=nearest,limit=1] {Invulnerable:1b}
execute in neodimension:ceresta_festa positioned 713 42 2137 run data merge entity @e[distance=..1,type=frog,sort=nearest,limit=1] {NoAI:1b}
execute in neodimension:ceresta_festa positioned 713 42 2137 run data merge entity @e[distance=..1,type=frog,sort=nearest,limit=1] {Invulnerable:1b}

execute in neodimension:ceresta_festa positioned 714 42 2138 run function neofunction:asset/summon/689
execute in neodimension:ceresta_festa positioned 714 42 2138 facing entity @p eyes run tp @e[distance=..1,type=zombie,sort=nearest,limit=1] ~ ~ ~ ~ ~
execute in neodimension:ceresta_festa positioned 714 42 2138 run data merge entity @e[distance=..1,type=zombie,sort=nearest,limit=1] {NoAI:1b}
execute in neodimension:ceresta_festa positioned 714 42 2138 run data merge entity @e[distance=..1,type=zombie,sort=nearest,limit=1] {Invulnerable:1b}
execute in neodimension:ceresta_festa positioned 714 42 2138 run data merge entity @e[distance=..1,type=frog,sort=nearest,limit=1] {NoAI:1b}
execute in neodimension:ceresta_festa positioned 714 42 2138 run data merge entity @e[distance=..1,type=frog,sort=nearest,limit=1] {Invulnerable:1b}

execute in neodimension:ceresta_festa positioned 715 42 2139 run function neofunction:asset/summon/687
execute in neodimension:ceresta_festa positioned 715 42 2139 facing entity @p eyes run tp @e[distance=..1,type=zombie,sort=nearest,limit=1] ~ ~ ~ ~ ~
execute in neodimension:ceresta_festa positioned 715 42 2139 run data merge entity @e[distance=..1,type=zombie,sort=nearest,limit=1] {NoAI:1b}
execute in neodimension:ceresta_festa positioned 715 42 2139 run data merge entity @e[distance=..1,type=zombie,sort=nearest,limit=1] {Invulnerable:1b}
execute in neodimension:ceresta_festa positioned 715 42 2139 run data merge entity @e[distance=..1,type=frog,sort=nearest,limit=1] {NoAI:1b}
execute in neodimension:ceresta_festa positioned 715 42 2139 run data merge entity @e[distance=..1,type=frog,sort=nearest,limit=1] {Invulnerable:1b}

execute in neodimension:ceresta_festa positioned 715 42 2140 run function neofunction:asset/summon/686
execute in neodimension:ceresta_festa positioned 715 42 2140 facing entity @p eyes run tp @e[distance=..1,type=zombie,sort=nearest,limit=1] ~ ~ ~ ~ ~
execute in neodimension:ceresta_festa positioned 715 42 2140 run data merge entity @e[distance=..1,type=zombie,sort=nearest,limit=1] {NoAI:1b}
execute in neodimension:ceresta_festa positioned 715 42 2140 run data merge entity @e[distance=..1,type=zombie,sort=nearest,limit=1] {Invulnerable:1b}
execute in neodimension:ceresta_festa positioned 715 42 2140 run data merge entity @e[distance=..1,type=frog,sort=nearest,limit=1] {NoAI:1b}
execute in neodimension:ceresta_festa positioned 715 42 2140 run data merge entity @e[distance=..1,type=frog,sort=nearest,limit=1] {Invulnerable:1b}


data modify storage neofunction:main_story Talks set value [{Text:'[{"text":"<"},{"text":"ストライカーガエル","color":"dark_green","bold":true,"italic":false},{"text":">"},{"text":"「けろけろ～」"}]',Sound:{Sound:"entity.frog.death",Pitch:1.2}},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「って、もうかかりましたぞ～～～！！」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2}},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「この大きさ、この数！旅人殿！これじゃ私達がカエルの「餌」になってしまいますぞ～！」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2}},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「奴らは麦を見るような輝かしい目で我々を見つめていますぞ！旅人殿！私は戦えませぬ、記帳を守るので精一杯なのですぞ～～！」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2}},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「頼みましたぞ！」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2},Command:"schedule function neofunction:system/adv/tick/quest/30/tellraw/12 3s"}]
execute as @a at @s run function neofunction:asset/event/talk/.neo {Path:"neofunction:main_story Talks"} 



