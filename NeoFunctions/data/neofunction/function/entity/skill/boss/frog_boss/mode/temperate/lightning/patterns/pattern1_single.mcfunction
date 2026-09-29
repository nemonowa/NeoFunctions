# 命名：pattern1_single
# 説明：①スパイラル追撃雷 - 現在地への直撃後、渦を巻きながら2〜4連続で追撃が迫る
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern1_single

# 1発目：現在地に着弾
execute at @a[distance=..31,gamemode=!spectator] run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:50}}

# 追撃連数を抽選（2〜4連撃、全プレイヤー共通）
execute store result score %LT1Chain temp run random value 2..4

# 追撃1発目：ランダム方向へ4マスの位置（確定）
execute as @a[distance=..31,gamemode=!spectator] at @s run summon marker ~ ~ ~ {Tags:["LTPivot"]}
execute as @a[distance=..31,gamemode=!spectator] at @s store result entity @e[tag=LTPivot,distance=..1,limit=1,sort=nearest] Rotation[0] float 1 run random value 0..360
execute as @a[distance=..31,gamemode=!spectator] at @e[tag=LTPivot,distance=..1,limit=1,sort=nearest] positioned ^ ^ ^4 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:65}}
kill @e[tag=LTPivot]

# 追撃2発目（%LT1Chainが3以上）：さらに渦を絞って接近
execute if score %LT1Chain temp matches 3.. as @a[distance=..31,gamemode=!spectator] at @s run summon marker ~ ~ ~ {Tags:["LTPivot"]}
execute if score %LT1Chain temp matches 3.. as @a[distance=..31,gamemode=!spectator] at @s store result entity @e[tag=LTPivot,distance=..1,limit=1,sort=nearest] Rotation[0] float 1 run random value 0..360
execute if score %LT1Chain temp matches 3.. as @a[distance=..31,gamemode=!spectator] at @e[tag=LTPivot,distance=..1,limit=1,sort=nearest] positioned ^ ^ ^2.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:80}}
kill @e[tag=LTPivot]

# 追撃3発目（%LT1Chainが4）：仕上げに現在地への一撃
execute if score %LT1Chain temp matches 4 at @a[distance=..31,gamemode=!spectator] run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:92}}
