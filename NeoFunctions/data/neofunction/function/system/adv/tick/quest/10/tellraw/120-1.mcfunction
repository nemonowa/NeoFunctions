# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/tellraw/120-1

# 内容


execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"}] at @s run summon item_display ~-1 ~0.5 ~1 {Glowing:1b,Rotation:[-9.84375F,0F],Tags:["fly2","tempdisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:redstone_block",count:1,components:{"minecraft:custom_name":{"text":"minecraft:item/3d/104","color":"yellow","italic":false},"minecraft:custom_model_data":{floats:[1004.0f]}}}}


execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"}] at @s run particle minecraft:cloud ~-1 ~0.5 ~1 -0.2 0 0.2 0.01 100 force @a