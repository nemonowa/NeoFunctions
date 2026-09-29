# 命名：18
# 説明：（説明未記載）
# >/このファンクションはfunction neofunction:system/adv/tick/quest/30/numberまたは汎用会話モジュールのCommandから叩かれています。ご確認ください。
# =/function neofunction:system/adv/tick/quest/30/tellraw/18



data modify storage neofunction:main_story Talks set value [{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「準備ができましたな！それでは地下水路の鍵を開けますぞ...！」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2}},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「旅人殿...ルクスイーファ建設の方々がおっしゃっていたことなのですがね、」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2}},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「地質調査の結果によると、どうやらカエルが地下に住みつき始めてから水路の拡大が止まらないようなのです。」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2}},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「最大深度は60ブロックを超えるとか...。」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2}},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「おそらく、長い冒険になると思います。」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2}},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「気兼ねなく地上に逐一戻って物資の補充をしていただいても構いませんぞ！」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2},Command:"execute in neodimension:ceresta_festa run forceload add 691 2226"},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「どうかご武運を、ですぞ～～！！」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2},Command:"schedule function neofunction:system/adv/tick/quest/30/tellraw/19 2s"}]
execute as @a at @s run function neofunction:asset/event/talk/.neo {Path:"neofunction:main_story Talks"} 



