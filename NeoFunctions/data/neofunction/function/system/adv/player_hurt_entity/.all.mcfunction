# 命名：.all
# 説明：進捗達成時
# >/adv neofunction:player_hurt_entity/.all
# =/function neofunction:system/adv/player_hurt_entity/.all
 

# 内容
tellraw @s[tag=ad_info] [{"text":"neofunction:system/adv/player_hurt_entity/.all"}]

function neofunction:system/adv/player_hurt_entity/.get_entity {Name:".all"}

# HP表示
execute as @s[gamemode=creative] at @s as @e[tag=hit] run function neofunction:system/scoreboard/showhp
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":{floats:[995.0f]}}}}] at @s as @e[tag=hit] run function neofunction:system/scoreboard/showhp
execute as @s[advancements={neoadvancement:4/break/2=false}] at @s as @e[tag=hit] run function neofunction:system/scoreboard/showhp

# 職業ぱっしぶ
execute as @s[advancements={neoadvancement:neoskill/200=true}] at @s run function neofunction:player/job/knight/combo
execute as @s[advancements={neoadvancement:neoskill/210=true}] at @s run function neofunction:player/job/aria/combo
execute as @s[advancements={neoadvancement:neoskill/220=true}] at @s run function neofunction:player/job/shooter/combo
execute as @s[advancements={neoadvancement:neoskill/230=true}] at @s run function neofunction:player/job/doctor/combo
execute as @s[advancements={neoadvancement:neoskill/240=true}] at @s run function neofunction:player/job/tamer/combo
execute as @s[advancements={neoadvancement:neoskill/250=true}] at @s run function neofunction:player/job/assasin/combo


# 追加ダメージ
execute if predicate neofunction:random_chance/10 run function neofunction:system/adv/player_hurt_entity/add/criticalhit
execute as @s[x_rotation=-90..-45] run function neofunction:system/adv/player_hurt_entity/add/beatup
execute as @s[x_rotation=45..90] run function neofunction:system/adv/player_hurt_entity/add/knockdown

# 無敵だった場合（resistance5)
execute if entity @e[tag=hit,nbt={active_effects:[{id:"minecraft:resistance",amplifier:4b}]}] run title @s actionbar {"text":"注：無敵エンティティ","color":"yellow","bold":true,"italic":false}
execute if entity @e[tag=hit,nbt={active_effects:[{id:"minecraft:resistance",amplifier:4b}]}] run playsound block.anvil.place record @s ~ ~ ~ 1.0 2.0

# 特定のエンティティ
execute as @e[tag=hit,nbt={DeathLootTable:"neofunction:asset/summon/2"}] run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 殴るならもっと殺意を込めろ。"}]

# 確率25%で壺ドロップ
execute if entity @e[tag=enemy,distance=..8] as @s[predicate=neofunction:random_chance/25,nbt={SelectedItem:{components:{"minecraft:custom_model_data":{floats:[1164.0f]}}}}] at @s anchored feet positioned ^ ^1 ^2 unless block ~ ~ ~ #neofunction:all run function neofunction:entity/skill/air-pot

# 898
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":{floats:[898.0f]}}}}] if entity @e[tag=hit,predicate=neofunction:no_armor] run function neofunction:system/adv/player_hurt_entity/898

# 1768
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":{floats:[1768.0f]}}}}] run function neofunction:system/adv/player_hurt_entity/1768

# burnitem
execute if predicate neofunction:item/burnitem run function neofunction:system/adv/player_hurt_entity/burnitem

# counter
execute if entity @e[tag=hit,tag=counter] run function neofunction:system/adv/player_hurt_entity/counter

# dirtshield
execute if entity @e[tag=hit,tag=dirtshield] run function neofunction:system/adv/player_hurt_entity/dirtshield

# healing
execute if entity @e[tag=hit,tag=Healing] run function neofunction:system/adv/player_hurt_entity/healing

# shield
execute if entity @e[tag=hit,nbt={equipment:{offhand:{id:"minecraft:shield"}}}] run function neofunction:system/adv/player_hurt_entity/shield

# skill258-1
execute if entity @e[tag=hit,tag=skill258-1] run function neofunction:system/adv/player_hurt_entity/skill258-1

# water
execute if entity @e[tag=hit,tag=water] run function neofunction:system/adv/player_hurt_entity/water

# familiar
execute if entity @e[tag=hit,tag=familiar] run execute if score @s sneak_time matches 10.. run function neofunction:system/adv/player_hurt_entity/familiar

tag @e[tag=hit] remove hit

# 再使用のために進捗剥奪
advancement revoke @s only neofunction:player_hurt_entity/.all
