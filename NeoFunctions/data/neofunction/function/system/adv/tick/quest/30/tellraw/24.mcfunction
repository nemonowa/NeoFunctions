# 命名：24
# 説明：（説明未記載）
# >/このファンクションはfunction neofunction:system/adv/tick/quest/30/numberまたは汎用会話モジュールのCommandから叩かれています。ご確認ください。
# =/function neofunction:system/adv/tick/quest/30/tellraw/24

clear @p minecraft:bone[minecraft:custom_model_data={floats:[1567.0f]}] 10

data modify storage neofunction:main_story Talks set value [{Text: '[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/602\\"},limit=1]"},{"text":">"},{"text":"「少々待ちたまえ、錬金というのは時間がかかるものなのだ。」"}]',Sound: {Sound: "entity.villager.yes",Pitch: 1.2},Delay: "200"},{Text: '[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/602\\"},limit=1]"},{"text":">"},{"text":"「完成した。だが、「完璧」ではない。」"}]',Sound: {Sound: "entity.villager.yes",Pitch: 1.2},Command: "loot spawn 912 49 1107 loot neofunction:item/1765"},{Text: '[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/602\\"},limit=1]"},{"text":">"},{"text":"「君の持ってきた素材の量がまだまだ足りない。」"}]',Sound: {Sound: "entity.villager.yes",Pitch: 1.2}},{Text: '[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/602\\"},limit=1]"},{"text":">"},{"text":"「これでは、低レベルの粘膜しか解除できない。」"}]',Sound: {Sound: "entity.villager.yes",Pitch: 1.2},Command: "execute in neodimension:ceresta_festa run forceload add 917 1107"},{Text: '[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/602\\"},limit=1]"},{"text":">"},{"text":"「もっと上級の素材を持ってくれば、より高度な解除溶液を作れる。」"}]',Sound: {Sound: "entity.villager.yes",Pitch: 1.2},Command: "execute in neodimension:ceresta_festa run forceload add 676 2197"},{Text: '[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/602\\"},limit=1]"},{"text":">"},{"text":"「さぁ、まずはこの溶剤を持って、先に進むといい。」"}]',Sound: {Sound: "entity.villager.yes",Pitch: 1.2},},{Text: '[{"text":"＊クラウスの新取引が解放された！！","bold":true,"underlined":true,"color":"white"}]',Sound: {Sound: "block.amethyst_block.break",Pitch: 1.2},Command: "schedule function neofunction:system/adv/tick/quest/30/tellraw/25 1s"}]
execute as @a at @s run function neofunction:asset/event/talk/.neo {Path: "neofunction:main_story Talks"} 



