# 命名：1415_harvest
# 説明：
# >
# =/function neofunction:system/adv/tick/cmd/1415_harvest


execute at @s run loot spawn ~ ~ ~ loot neofunction:farming/wheat
# 【変更：2026-09-27 26.3対応】1.20.4 の「Item.tag が無い＝NBTを持たない素のアイテム」判定は 26.3 では Item.components の有無に相当する
execute at @s as @e[type=item,limit=2,sort=nearest,nbt=!{PickupDelay:0s}] unless entity @s[nbt=!{Item:{id:"minecraft:wheat"}},nbt=!{Item:{id:"minecraft:wheat_seeds"}}] unless data entity @s Item.components run data modify entity @s PickupDelay set value 0s
execute at @s as @e[type=item,limit=2,sort=nearest,nbt={PickupDelay:0s},tag=!check] at @s run function neofunction:entity/.spawn/.neo
playsound block.crop.break block @s ~ ~ ~ 1 1
particle block{block_state:{id:"minecraft:wheat",properties:{"age":"7"}}} ~ ~ ~ 0.1 0.1 0.1 1 10

# 特殊防具処理
execute if entity @s[tag=item1593] at @s run function neofunction:system/adv/tick/cmd/1415_armor


setblock ~ ~ ~ wheat[age=0]
scoreboard players add @s break_wheat 1