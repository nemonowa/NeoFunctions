# 命名：.neo
# 説明：エンティティ処理
# 説明：tag=bossが常時実行。bossbar自体の生成はasset/bossbar/0で済んでいるためここではadmin/addは行わない
# >/function neofunction:entity/skill/.neo 実行者as @e[tag=!vanilla,tag=check] if entity @s[tag=boss] 実行位置0 0 0
# =/function neofunction:entity/skill/boss/.neo


# BOSS共通処理
execute as @s store result score @s HP run data get entity @s Health 1.0
execute as @s store result score @s DEF run data get entity @s AbsorptionAmount
scoreboard players operation @s HP += @s DEF

execute if entity @s[tag=!nobossbar] run function neofunction:asset/bossbar/.neo

# BOSS個別処理
execute as @s[tag=sir,scores={HP=..50}] run function neofunction:entity/skill/sir

# BOSS個別処理
execute as @s[tag=pirate1,scores={HP=..200}] run function neofunction:entity/skill/pirate1
execute as @s[tag=pirate2,scores={HP=..100}] run function neofunction:entity/skill/pirate2

# BOSS個別処理
execute as @s[tag=elitepirate1,scores={HP=..400}] at @s run function neofunction:entity/skill/elitepirate1
execute as @s[tag=elitepirate2,scores={HP=..200}] at @s run function neofunction:entity/skill/elitepirate2

# エキリブリアムのtick ↓あとでまとめよう...
execute if entity @s[tag=ekiriburiamu] at @s run return run function neofunction:entity/skill/boss/ekiriburiamu/tick
execute if entity @s[tag=ekirielite] at @s run return run function neofunction:entity/skill/boss/ekiriburiamu/tick

# ヴァレリカのtick
execute if entity @s[tag=valerica] in neodimension:ceresta_festa positioned 543 -46 1424 at @s run return run function neofunction:entity/skill/boss/valerica/tick

# サラザルのtick
execute if entity @s[tag=sarazaru] in neodimension:ceresta_festa positioned 398 40 1031 at @s run return run function neofunction:entity/skill/boss/sarazaru/tick

# カエルボスtick
execute on vehicle if entity @s[tag=FrogBoss] run tag @s add boss
execute if entity @s[tag=FrogBoss] at @s run return run function neofunction:entity/skill/boss/frog_boss/tick

# カエルボス死亡
execute if entity @s[tag=FrogBossDead] at @s run return run function neofunction:entity/skill/boss/frog_boss/dead_tick

#ラルーシャtick
execute if entity @s[tag=larusha] at @s run return run function neofunction:entity/skill/boss/larusha/tick
