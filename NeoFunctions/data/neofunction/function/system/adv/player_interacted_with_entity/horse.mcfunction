# 命名：horse
# 説明：馬にインタラクションしたとき
# >
# =/function neofunction:system/adv/player_interacted_with_entity/horse




# 固有NPC会話（IDで分岐
execute if entity @s[advancements={neoadvancement:neoskill/42=true}] run function neofunction:asset/skill/42
execute if entity @s[advancements={neoadvancement:neoskill/43=true}] run function neofunction:asset/skill/43
execute if entity @s[advancements={neoadvancement:neoskill/44=true}] run function neofunction:asset/skill/44
execute if entity @s[advancements={neoadvancement:neoskill/45=true}] run function neofunction:asset/skill/45
execute if entity @s[advancements={neoadvancement:neoskill/46=true}] run function neofunction:asset/skill/46

execute if predicate neofunction:item/unique_horse_armor run schedule function neofunction:system/adv/player_interacted_with_entity/unique_horse_armor/schedule 1t replace

effect clear @e[type=minecraft:horse,distance=..3,limit=1,tag=!enemy,sort=nearest] minecraft:slowness




