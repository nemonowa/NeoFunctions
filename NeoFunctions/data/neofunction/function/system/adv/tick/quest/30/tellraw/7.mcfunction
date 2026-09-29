# 命名：7
# 説明：発光を解除する。
# >/このファンクションはfunction neofunction:system/adv/tick/quest/30/numberまたは汎用会話モジュールのCommandから叩かれています。ご確認ください。
# =/function neofunction:system/adv/tick/quest/30/tellraw/7
effect clear @s minecraft:glowing
data modify storage neofunction:main_story Talks set value [{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「小麦を1スタック収穫して下さりましたか！ありがとうございまする！」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2}},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「さぁ、早速罠設置用のダクトに向かいましょうぞ！」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2}},{Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/103\\"},limit=1]"},{"text":">"},{"text":"「あぁそれと、種を植えなおすことを忘れてはいないでしょうな(圧)」"}]',Sound:{Sound:"entity.villager.yes",Pitch:1.2},Command:"schedule function neofunction:system/adv/tick/quest/30/tellraw/8 5s"}]
execute as @a at @s run function neofunction:asset/event/talk/.neo {Path:"neofunction:main_story Talks"} 

