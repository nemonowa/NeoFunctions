# 命名：tick
# 説明：
# 実行条件：
# >/neofunction:tick/.neo
# =/function neofunction:entity/skill/boss/valerica/tick

# 内容：魔女保護の中身
#vareciaが外に行かないように保護
execute as @s[type=minecraft:vindicator,nbt={DeathLootTable:"neofunction:asset/summon/777"}] unless entity @s[distance=..40] run tp @s 543 -43 1424
execute as @s[type=minecraft:vindicator,nbt={DeathLootTable:"neofunction:asset/summon/7777"}] unless entity @s[distance=..40] run tp @s 543 -43 1424

execute as @e[tag=valerica] at @s if entity @e[tag=LivingMail,distance=..128] run team join yellow @s

execute as @e[tag=valerica,team=!red] at @s unless entity @e[tag=LivingMail,distance=..128] run playsound minecraft:item.totem.use record @a[distance=..64] ~ ~ ~ 1.5 0.5
execute as @e[tag=valerica,team=!red] at @s unless entity @e[tag=LivingMail,distance=..128] run function neofunction:entity/skill/boss/valerica/white with storage neofunction:bossbar
execute as @e[tag=valerica] at @s unless entity @e[tag=LivingMail,distance=..128] run team join red @s 

execute as @e[type=minecraft:witch,distance=..32] at @s if entity @s[nbt={equipment:{mainhand:{id:"minecraft:potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:healing"}}}}}] run item replace entity @s weapon.mainhand with potion[minecraft:potion_contents={potion:"minecraft:regeneration"}]

#肩代わり
execute at @s if entity @e[tag=LivingMail] run function neofunction:entity/skill/boss/valerica/damage
execute unless entity @e[tag=LivingMail] unless data entity @s {AbsorptionAmount:0f} run data modify entity @s AbsorptionAmount set value 0f

execute at @s positioned ~ ~1 ~ as @e[tag=LivingMail,limit=4,sort=random] run function neofunction:entity/skill/line_to_me/crit


#プレイヤーが50mエリアに存在している間は処理をここで終了
execute if entity @a[distance=..50,gamemode=!spectator] run return 0

# ここから下は上の条件に合致した場合のみ
#40m以内の全てのエンティティにdel付与（削除）
#ヴァレリカが煽る

execute if entity @s[nbt={DeathLootTable:"neofunction:asset/summon/777"}] run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"ほら、ご覧なさい。","color":"gray","bold":true,"italic":false}]
execute if entity @s[nbt={DeathLootTable:"neofunction:asset/summon/777"}] run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"私の騎士たちは、最後まで主を守り抜いた。","color":"gray","bold":true,"italic":false}]
execute if entity @s[nbt={DeathLootTable:"neofunction:asset/summon/777"}] run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"これが、魂を書き綴られた者たちの忠誠よ。","color":"gray","bold":true,"italic":false}]

tag @e[tag=enemy,distance=..40] add del
schedule function neofunction:asset/bossbar/hide 1s

#機動部復活処理
setblock 543 -44 1424 minecraft:command_block[conditional=false,facing=up]{Command:"/function neofunction:entity/skill/boss/valerica/start",CustomName:"@",SuccessCount:0,TrackOutput:1b,UpdateLastExecution:1b,auto:0b,conditionMet:0b,powered:0b}
setblock 543 -43 1424 minecraft:crying_obsidian
setblock 543 -42 1424 minecraft:stone_button[face=floor,facing=west,powered=false]




