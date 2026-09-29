# 命名：inportal
# 説明：
# >/function neofunction:system/adv/enter_block/end_gateway
# =/function neofunction:entity/skill/boss/valerica/inportal




tp @s 549 -42 1424 90 0

execute in neodimension:ceresta_festa positioned 543 -44 1424 if entity @e[distance=..40,nbt={DeathLootTable:"neofunction:asset/summon/777"}] run return 0

setblock 543 -44 1424 minecraft:command_block[conditional=false,facing=up]{Command:"/function neofunction:entity/skill/boss/valerica/start",CustomName:"@",SuccessCount:0,TrackOutput:1b,UpdateLastExecution:1b,auto:0b,conditionMet:0b,powered:0b}
setblock 543 -43 1424 minecraft:crying_obsidian
setblock 543 -42 1424 minecraft:stone_button[face=floor,facing=west,powered=false]



