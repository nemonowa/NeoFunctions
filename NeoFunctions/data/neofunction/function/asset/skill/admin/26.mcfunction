# 命名：26
# 説明：ブロック非貫通ビーム
# 実行条件：impulse
# >/function neofunction:player/1_detection
# =/function neofunction:asset/skill/admin/26




## 内容 beam
execute anchored eyes run particle minecraft:heart ~ ~ ~ 0 0 0 0 0
execute if entity @s[distance=..40] positioned ^ ^ ^1 if block ~ ~ ~ air run function neofunction:asset/skill/16

# summon falling_block ~ ~3.5 ~ {BlockState:{id:"minecraft:light_weighted_pressure_plate"},Glowing:1b,Time:1,DropItem:0b,HurtEntities:1b,FallHurtMax:30,fall_distance:30f,FallHurtAmount:30f}
# playsound block.anvil.land master @a ~ ~100 ~ 0.01 0.5 0.2


## 消費SP
scoreboard players remove @s SP 10

## クールタイム
scoreboard players add @s CT 5