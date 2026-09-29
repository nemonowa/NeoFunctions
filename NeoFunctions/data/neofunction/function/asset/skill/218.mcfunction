# 命名：218
# 説明：共鳴回帰【レゾナンス・リカージョン】
# >
# =/function neofunction:asset/skill/218

# 内容
# 自身の装備している防具を修復する

# 32m以内に敵がいる場合は発光させて不発（戦闘中は修復不可）
execute if entity @e[tag=enemy,distance=..32] run effect give @s minecraft:glowing 3 0 true
execute if entity @e[tag=enemy,distance=..32] run playsound minecraft:block.note_block.bass record @s ~ ~ ~ 2 1
execute if entity @e[tag=enemy,distance=..32] run return run tellraw @s "近くに敵がいるため修復できません"

execute if data entity @s equipment.feet run tag @s add repairer
execute if data entity @s equipment.legs run tag @s add repairer
execute if data entity @s equipment.chest run tag @s add repairer
execute if data entity @s equipment.head run tag @s add repairer

execute if entity @s[tag=!repairer] run playsound minecraft:block.note_block.bass record @s ~ ~ ~ 2 1
execute if entity @s[tag=!repairer] run return run tellraw @s "修復する防具が存在しません"

item modify entity @s armor.head neofunction:set_damage/1
item modify entity @s armor.chest neofunction:set_damage/1
item modify entity @s armor.legs neofunction:set_damage/1
item modify entity @s armor.feet neofunction:set_damage/1
tag @s remove repairer

# 演出
playsound block.anvil.use record @s ~ ~ ~ 0.1 0.7
particle crit ~ ~1 ~ 0.1 0.5 0.1 0.1 100 force

# SP消費：100%消費
scoreboard players remove @s SP 100