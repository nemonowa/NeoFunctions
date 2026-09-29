# 命名：=/function neofunction:entity/skill/boss/ekiriburiamu/modechenge
# 説明：エキリブリアムの加護チェンジ
# 説明：呼び出し >/function neofunction:entity/skill/clock/60s
# 実行条件：60s毎にエキリブリアムに実行
# >
# =/function neofunction:entity/skill/boss/ekiriburiamu/modechenge

#内容

execute if entity @s[tag=ekirifinal] run return 0

# --- ここから毎回呼ばれる抽選処理 ---

# 0~2の3択で乱数を振る
execute store result score @s temp run random value 0..2

# 現在の属性(flag)以上ならtempを+1して、現在の属性とかぶらないようにする
execute if score @s temp >= @s flag run scoreboard players add @s temp 1

# 新しい属性をflagとして確定させる
execute run scoreboard players operation @s flag = @s temp

# 確定したtempの値で分岐
execute if score @s temp matches 0 run function neofunction:entity/skill/boss/ekiriburiamu/firemode
execute if score @s temp matches 1 run function neofunction:entity/skill/boss/ekiriburiamu/watermode
execute if score @s temp matches 2 run function neofunction:entity/skill/boss/ekiriburiamu/windmode
execute if score @s temp matches 3 run function neofunction:entity/skill/boss/ekiriburiamu/dirtmode

execute as @e[type=vex,distance=..64,nbt={DeathLootTable:"neofunction:asset/summon/660"}] at @s run function neofunction:asset/summon/744
execute as @e[type=vex,distance=..64,nbt={DeathLootTable:"neofunction:asset/summon/664"}] at @s run function neofunction:asset/summon/745
execute as @e[type=vex,distance=..64,nbt={DeathLootTable:"neofunction:asset/summon/668"}] at @s run function neofunction:asset/summon/746
execute as @e[type=vex,distance=..64,nbt={DeathLootTable:"neofunction:asset/summon/672"}] at @s run function neofunction:asset/summon/747

