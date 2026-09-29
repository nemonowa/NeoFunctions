# 命名：tick
# 説明：
# >/function neofunction:entity/skill/boss/.neo
# =/function neofunction:entity/skill/boss/frog_boss/tick

scoreboard players add @s generaltimer 1

# システム用
scoreboard players operation %5 temp = @s generaltimer
scoreboard players operation %5 temp %= $5 const
scoreboard players operation %10 temp = @s generaltimer
scoreboard players operation %10 temp %= $10 const

# 水中以外の速度ブースト
# 【変更：2026-09-27 26.3対応】属性修飾子は 1.21 で名前(Name)が廃止され id で識別するため、同じ行で付け外ししている id で判定する
execute unless data entity @s attributes[{id:"minecraft:movement_speed"}].modifiers[{id:"neofunction:00000000-0000-0000-0002-000000000000"}] unless predicate neofunction:is_in_water run attribute @s movement_speed modifier add neofunction:00000000-0000-0000-0002-000000000000 1 add_multiplied_total
execute if data entity @s attributes[{id:"minecraft:movement_speed"}].modifiers[{id:"neofunction:00000000-0000-0000-0002-000000000000"}] if predicate neofunction:is_in_water run attribute @s movement_speed modifier remove neofunction:00000000-0000-0000-0002-000000000000

# 人がいなければ終了させる
execute positioned 652 -52 2138 unless entity @e[type=player,distance=..32] run function neofunction:entity/skill/boss/frog_boss/lose

# ダメージ肩代わり
execute if data entity @s {AbsorptionAmount:0f} run data modify entity @s AbsorptionAmount set value 2000f
execute unless data entity @s {AbsorptionAmount:2000f} run function neofunction:entity/skill/boss/frog_boss/damage_alt

# エリートなら別
execute if entity @s[tag=FrogBossElite] run return run function neofunction:entity/skill/boss/frog_boss/elite/tick

# HP半分で水没
execute on passengers if score @s HP matches ..350 on vehicle unless entity @s[tag=FrogBossHalf] run scoreboard players set @s generaltimer 2001
execute on passengers if score @s HP matches ..150 on vehicle unless entity @s[tag=FrogBossHalf1] run scoreboard players set @s generaltimer 2201

execute if score @s generaltimer matches 1250 run function neofunction:entity/skill/boss/frog_boss/mode/cold/warp
execute if score @s generaltimer matches 1750 run function neofunction:entity/skill/boss/frog_boss/mode/cold/warp

# 雷魔法は形態に関係なく常時発動
execute if score @s generaltimer matches 400 positioned ~ -53.5 ~ run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
execute if score @s generaltimer matches 800 positioned ~ -53.5 ~ run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
execute if score @s generaltimer matches 1200 positioned ~ -53.5 ~ run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
execute if score @s generaltimer matches 1600 positioned ~ -53.5 ~ run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select

# 自機狙い雷
execute if score @s generaltimer matches 200..270 if score %5 temp matches 0 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/player

execute if score @s generaltimer matches 600..670 if score %5 temp matches 0 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/player

execute if score @s generaltimer matches 1000..1070 if score %5 temp matches 0 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/player

execute if score @s generaltimer matches 1400..1470 if score %5 temp matches 0 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/player

execute if score @s generaltimer matches 1800..1870 if score %5 temp matches 0 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/player

#エフェクトと発動までのタイマーが-1t
execute at @e[tag=AttackPoint] run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/prediction
execute as @e[tag=AttackPoint] store result entity @s data.Timer int 1 run data get entity @s data.Timer 0.9999
# この時間内で、Timerが0になったら攻撃をしてマーカーを削除する。
execute as @e[tag=AttackPoint,nbt={data:{Timer:0}}] at @s run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/attack
execute run kill @e[tag=AttackPoint,nbt={data:{Timer:0}}]


execute if score @s generaltimer matches 0..1000 run function neofunction:entity/skill/boss/frog_boss/mode/cold/.neo
execute if score @s generaltimer matches 1000.. run function neofunction:entity/skill/boss/frog_boss/mode/warm/.neo
#execute if score @s generaltimer matches 0..2000 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/.neo
execute if score @s generaltimer matches 2000 run scoreboard players set @s generaltimer -1


execute if score @s generaltimer matches 2001 run playsound entity.evoker.prepare_summon hostile @a[distance=..31] ~ ~ ~ 2.0 1.0
execute if score @s generaltimer matches 2001 run tag @s add FrogBossHalf
execute if score @s generaltimer matches 2040 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/soulsand1
execute if score @s generaltimer matches 2080 run scoreboard players set @s generaltimer 999


execute if score @s generaltimer matches 2201 run playsound entity.evoker.prepare_summon hostile @a[distance=..31] ~ ~ ~ 2.0 1.0
execute if score @s generaltimer matches 2201 run tag @s add FrogBossHalf1
execute if score @s generaltimer matches 2220 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/water1
execute if score @s generaltimer matches 2240 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/water2
execute if score @s generaltimer matches 2280.. run scoreboard players set @s generaltimer 999

execute on passengers unless data entity @s {Health:0f} run return 0
function neofunction:entity/skill/boss/frog_boss/death