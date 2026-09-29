# 命名：tick
# 説明：
# >/function neofunction:entity/skill/boss/frog_boss/tick
# =/function neofunction:entity/skill/boss/frog_boss/elite/tick

# システム用
scoreboard players operation %5 temp = @s generaltimer
scoreboard players operation %5 temp %= $5 const
scoreboard players operation %10 temp = @s generaltimer
scoreboard players operation %10 temp %= $10 const

# HPで段階的に水没（第1段階=ソウルサンド化、第2段階=完全水没）
# 通常版に合わせて2段階制にしつつ、エリートは早めの閾値で進行させる
execute on passengers if score @s HP matches ..350 on vehicle unless entity @s[tag=FrogBossHalf] run scoreboard players set @s generaltimer 2001
execute on passengers if score @s HP matches ..200 on vehicle unless entity @s[tag=FrogBossHalf1] run scoreboard players set @s generaltimer 2201

# 冷気形態への強制ワープ（通常版と同じ追加ワープタイミング）
execute if score @s generaltimer matches 1250 run function neofunction:entity/skill/boss/frog_boss/elite/cold/warp
execute if score @s generaltimer matches 1750 run function neofunction:entity/skill/boss/frog_boss/elite/cold/warp

# 雷魔法は形態に関係なく常時発動（エリートは通常版の2倍以上の頻度）
execute if score @s generaltimer matches 200 positioned ~ -53.5 ~ run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern_select
execute if score @s generaltimer matches 400 positioned ~ -53.5 ~ run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern_select
execute if score @s generaltimer matches 600 positioned ~ -53.5 ~ run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern_select
execute if score @s generaltimer matches 800 positioned ~ -53.5 ~ run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern_select
execute if score @s generaltimer matches 1000 positioned ~ -53.5 ~ run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern_select
execute if score @s generaltimer matches 1200 positioned ~ -53.5 ~ run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern_select
execute if score @s generaltimer matches 1400 positioned ~ -53.5 ~ run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern_select
execute if score @s generaltimer matches 1600 positioned ~ -53.5 ~ run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern_select
execute if score @s generaltimer matches 1800 positioned ~ -53.5 ~ run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern_select

# 自機狙い雷
execute if score @s generaltimer matches 300..370 if score %5 temp matches 0 run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/player

execute if score @s generaltimer matches 700..770 if score %5 temp matches 0 run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/player

execute if score @s generaltimer matches 1100..1170 if score %5 temp matches 0 run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/player

execute if score @s generaltimer matches 1500..1570 if score %5 temp matches 0 run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/player

#エフェクトと発動までのタイマーが-1t
execute at @e[tag=AttackPoint] run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/prediction
execute as @e[tag=AttackPoint] store result entity @s data.Timer int 1 run data get entity @s data.Timer 0.9999
# この時間内で、Timerが0になったら攻撃をしてマーカーを削除する。
execute as @e[tag=AttackPoint,nbt={data:{Timer:0}}] at @s run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/attack
execute run kill @e[tag=AttackPoint,nbt={data:{Timer:0}}]


execute if score @s generaltimer matches 0..1000 run function neofunction:entity/skill/boss/frog_boss/elite/cold/.neo
execute if score @s generaltimer matches 1000.. run function neofunction:entity/skill/boss/frog_boss/elite/warm/.neo
#execute if score @s generaltimer matches 0..2000 run function neofunction:entity/skill/boss/frog_boss/elite/temperate/.neo
execute if score @s generaltimer matches 2000 run scoreboard players set @s generaltimer -1


execute if score @s generaltimer matches 2001 run playsound entity.evoker.prepare_summon hostile @a[distance=..31] ~ ~ ~ 2.0 1.0
execute if score @s generaltimer matches 2001 run tag @s add FrogBossHalf
execute if score @s generaltimer matches 2040 run function neofunction:entity/skill/boss/frog_boss/elite/temperate/soulsand1
execute if score @s generaltimer matches 2080 run scoreboard players set @s generaltimer 999


execute if score @s generaltimer matches 2201 run playsound entity.evoker.prepare_summon hostile @a[distance=..31] ~ ~ ~ 2.0 1.0
execute if score @s generaltimer matches 2201 run tag @s add FrogBossHalf1
execute if score @s generaltimer matches 2220 run function neofunction:entity/skill/boss/frog_boss/elite/temperate/water1
execute if score @s generaltimer matches 2240 run function neofunction:entity/skill/boss/frog_boss/elite/temperate/water2
execute if score @s generaltimer matches 2280.. run scoreboard players set @s generaltimer 999

execute on passengers unless data entity @s {Health:0f} run return 0
function neofunction:entity/skill/boss/frog_boss/death
