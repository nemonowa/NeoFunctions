# 命名：wood2
# 説明：木伐採
# >
# =/function neofunction:asset/sign/spellsign/wood2

# 内容
gamerule block_drops false
execute as @e[tag=logbreak] at @s run setblock ~ ~ ~ minecraft:air destroy
gamerule block_drops true
kill @e[type=item,distance=..1,nbt={Age:1}]

#それぞれ関数呼び出し
execute as @e[tag=logbreak,nbt={Age:1}] at @s run function neofunction:asset/sign/spellsign/wood3
execute if entity @e[tag=logbreak] run schedule function neofunction:asset/sign/spellsign/wood2 1t