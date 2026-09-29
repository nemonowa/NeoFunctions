# 命名：beam
# 説明：beam
# >
# =/function neofunction:asset/skill/admin/beam
execute as @e[type=arrow,nbt={inGround:1b}] at @s run summon falling_block ~ ~ ~ {BlockState:{id:"minecraft:torch"},Time:1}
execute as @e[type=arrow,nbt={inGround:1b}] run kill @s



execute as @e[type=arrow,nbt={inGround:1b}] at @s run summon falling_block ~ ~ ~ {BlockState:{id:"minecraft:torch"},Time:1}
# execute if entity @e[type=arrow,nbt=CustomPotionColor:16566272]




execute if entity @e[type=arrow,nbt={CustomPotionColor:0}] run summon falling_block ~ ~ ~ {BlockState:{id:"minecraft:torch"},DropItem:0b}

execute as @e[type=arrow,nbt={CustomPotionColor:0,inGround:1b}] run kill @s

# give @p tipped_arrow[minecraft:potion_contents={custom_color:0}] 1


#beam
particle minecraft:heart ~ ~1.2 ~ 0 0 0 0 0
execute if entity @e[type=shulker,distance=..0.5] run tp @a @e[type=shulker,limit=1]
execute unless entity @e[type=shulker,distance=..0.5] if entity @s[distance=..40] positioned ^ ^ ^1 if block ~ ~ ~ air run function neofunction:skill/2

#beam
particle minecraft:heart ~ ~ ~ 0 0 0 0 0
execute if block ~ ~ ~ barrier run summon shulker ~ ~ ~ {Glowing:1b,AttachFace:0b,Tags:["test"]}
execute if entity @s[distance=..40] positioned ^ ^ ^1 if block ~ ~ ~ air run function neofunction:skill/4
tp @s @e[tag=test,type=shulker,limit=1]