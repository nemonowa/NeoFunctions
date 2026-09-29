# 命名：.neo
# 説明：モードチェンジ
# >/function neofunction:entity/skill/boss/frog_boss/tick
# =/function neofunction:entity/skill/boss/frog_boss/mode/temperate/.neo
execute if score @s generaltimer matches 600 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/first

# システム用
scoreboard players operation %20 temp = @s generaltimer
scoreboard players operation %20 temp %= $20 const
scoreboard players operation %10 temp = @s generaltimer
scoreboard players operation %10 temp %= $10 const

# 終わり
execute if score @s generaltimer matches 1200 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/finish
execute if score @s generaltimer matches 1200 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/frogspread
execute if score @s generaltimer matches 1210.. as @e[tag=FrogSpread] if predicate neofunction:is_in_water at @s positioned ~ ~1 ~ run function neofunction:entity/skill/boss/frog_boss/mode/temperate/aec
execute if score @s generaltimer matches 1210.. as @e[tag=FrogSpread] if data entity @s {OnGround:1b} at @s run function neofunction:entity/skill/boss/frog_boss/mode/temperate/aec
# HP低かったら攻撃が変化
#execute store result score @s HP on passengers run data get entity @s Health
#execute if score @s HP matches ..200 run return run function neofunction:entity/skill/boss/frog_boss/mode/temperate/low_hp

# 雷攻撃テンプレート
# generaltimerの単位はtick 620~1020が使用可能範囲

# 雷パターンを間隔を空けて3回ランダム抽選・実行
execute if score @s generaltimer matches 620 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select

# 雷パターンを間隔を空けて3回ランダム抽選・実行
execute if score @s generaltimer matches 820 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select

# 雷パターンを間隔を空けて3回ランダム抽選・実行
execute if score @s generaltimer matches 1000 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select


# 自機狙い雷
execute if score @s generaltimer matches 1040..1110 if score %10 temp matches 0 at @a[distance=..31,gamemode=!spectator] run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:59}}
execute if score @s generaltimer matches 1040..1110 if score %10 temp matches 0 as @a[distance=..31] at @s run playsound block.anvil.land hostile @s ~ ~ ~ 0.2 0.5
#エフェクトと発動までのタイマーが-1t
execute if score @s generaltimer matches 620..1180 at @e[tag=AttackPoint] run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/prediction
execute if score @s generaltimer matches 620..1180 as @e[tag=AttackPoint] store result entity @s data.Timer int 1 run data get entity @s data.Timer 0.9999
# この時間内で、Timerが0になったら攻撃をしてマーカーを削除する。
execute if score @s generaltimer matches 620..1180 as @e[tag=AttackPoint,nbt={data:{Timer:0}}] at @s run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/attack
execute if score @s generaltimer matches 620..1180 run kill @e[tag=AttackPoint,nbt={data:{Timer:0}}]



# 設置音を鳴らす generaltimerの値だけ変えて他はそのままでok
#execute if score @s generaltimer matches 720 positioned 652 -51 2138 as @a[distance=..31] at @s run playsound block.anvil.land hostile @s ~ ~ ~ 0.2 0.5

# 予測が出ている時間 generaltimerの範囲は20で割って19余るように positionedは中心座標を指定
#execute if score @s generaltimer matches 720..779 positioned 652 -54 2138 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/prediction

# 攻撃発生 generaltimerの値は予測の最後+1 予測と同じ座標を指定
#execute if score @s generaltimer matches 780 positioned 652 -54 2138 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/attack


