# 命名：20
# 説明：（説明未記載）
# >/このファンクションはfunction neofunction:system/adv/tick/quest/30/numberまたは汎用会話モジュールのCommandから叩かれています。ご確認ください。
# =/function neofunction:system/adv/tick/quest/30/tellraw/20



data modify storage neofunction:main_story Talks set value [{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「なるほど、第二層への扉が、カエルの粘膜で満たされていたのですな。」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2}},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「力任せに破ろうとしても、すぐに再生してしまうほど頑丈だったのですな...。」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2}},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「おそらく、その粘膜はただの壁じゃないでしょう。カエルどもが巣を守るために分泌する特殊な粘液と思われますぞ！」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2}},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「破り方ですか...」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2}},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「こんな事態は初めてでありますから、対処法などは確立できていないのでござりまする。」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2}},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「錬金術師ならその粘膜を突破する特効薬を作ってくれるとは思うのですが...。」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2}},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「あいにくルクスイーファの錬金術師は現在不在でございまして...。」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2}},{Text:'[{"text":"<"},{"selector":"@s"},{"text":">"},{"text":"(錬金術師...。確か、ビリーの野営地で禿頭の錬金術師が居たような...。)"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2},Command:"execute in neodimension:ceresta_festa run forceload add 917 1107"},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「お、心当たりの錬金術師がいらっしゃるご様子ですな。どうかその方に頼んでみてくだされ。」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2},Command:"schedule function neofunction:system/adv/tick/quest/30/tellraw/21 3s"}]
execute as @a at @s run function neofunction:asset/event/talk/.neo {Path:"neofunction:main_story Talks"} 



