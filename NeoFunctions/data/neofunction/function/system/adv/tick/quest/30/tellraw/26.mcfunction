# 命名：26
# 説明：（説明未記載）
# >/このファンクションはfunction neofunction:system/adv/tick/quest/30/numberまたは汎用会話モジュールのCommandから叩かれています。ご確認ください。
# =/function neofunction:system/adv/tick/quest/30/tellraw/26



data modify storage neofunction:main_story Talks set value [{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「おぉ！それが「カエルトカース」！！」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2}},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「ビリーの野営地にそんなに腕の立つ錬金術師がいたのですな！！」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2}},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「...待ってください...。」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2}},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「今のルクスイーファは...いたるところがカエルの粘膜でぬめぬめですぞ！」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2}},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「その「カエルトカース」を商品化すれば...とんでもない利益が狙えるかもしれませぬ！！」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2}},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「早速、錬金術師クラウス様のところに赴いて、「商談」をもちかけますぞ～～！！」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2},Command:"schedule function neofunction:system/adv/tick/quest/30/tellraw/27 5s"}]
execute as @a at @s run function neofunction:asset/event/talk/.neo {Path:"neofunction:main_story Talks"} 



