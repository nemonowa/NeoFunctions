# 命名：voidair
# 説明：NEXUSテレポート共通処理
# 説明：バイオーム：ヴォイドエアに入ったとき
# >/function neofunction:consume_item/.all
# =/function neofunction:system/adv/enter_block/voidair


# 内容
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:redstone_block replace minecraft:lapis_block
# execute as @e[type=minecraft:armor_stand,tag=anchor,sort=nearest,limit=1,distance=..8] at @s run setblock ~ ~ ~ minecraft:redstone_block
# execute as @s[tag=!enrealizer] run return run function neofunction:system/adv/biome/pointnemo/nexus_gateway

# 転移共通処理
# title @s subtitle [{"text":"||","color":"blue","bold":true,"italic":false,"obfuscated":true},{"text":"||","color":"dark_aqua"},{"text":"||","color":"blue"},{"text":" teleporting ","color":"aqua","obfuscated":false},{"text":"||","color":"blue"},{"text":"||","color":"dark_aqua"},{"text":"||","color":"blue"}]
# title @s title ""

# playsound minecraft:ambient.underwater.enter master @s ~ ~ ~ 1 0.3 1
# effect give @s minecraft:blindness 4 0 true
# effect give @s minecraft:slow_falling 3 0 true


# チュートリアル処理
# execute as @s[advancements={neoadvancement:nexus/root/1/0=false}] run return run function neofunction:asset/nexus/1


