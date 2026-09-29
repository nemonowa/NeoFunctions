# 命名：datapack
# 説明：ワールド内蔵のコマンドブロックからデタパ検知する機構（オーバーライド式）
# 説明：https://discord.com/channels/802086247291158538/998088115669434429/1305681259091202090
# 説明：コマブロ起点
# >
# =/function neofunction:asset/event/datapack



# say コマブロ起点だよ！
#execute as @a[tag=!prologue]

function neofunction:system/pos/.macro with storage pos:63
tellraw @a {"text":"§a§k|§e§k|§2§k|§b§k|§a§k|§2§l T§a§lhe §2§lW§a§lorld §2§lo§a§lf §2§lW§a§londers §a§k|§b§k|§2§k|§e§k|§a§k|§r"}

#setblock 1290 5 1311 minecraft:oak_wall_sign[facing=north,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:["","","",""]},front_text:{color:"black",has_glowing_text:0b,messages:["",{click_event:{"action":"run_command",command:"setblock ~ ~-3 ~ minecraft:redstone_block"},"text":"§a§k|§e§k|§2§k|§b§k|§a§k|§2§lT§a§lhe§2§lW§a§lorld§2§lo§a§lf§2§lW§a§londers§a§k|§b§k|§2§k|§e§k|§a§k|§r"},{"bold":true,click_event:{"action":"run_command",command:"/playsound minecraft:entity.chicken.death master @s ~ ~ ~"},"color":"aqua","italic":true,"text":"= クリア条件 =","underlined":true},""]},is_waxed:0b,allow_op_features:1b}

#setblock 1285 5 1294 minecraft:oak_wall_sign[facing=north,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:["","","",""]},front_text:{color:"black",has_glowing_text:0b,messages:["",{click_event:{"action":"run_command",command:"setblock ~ ~-3 ~ minecraft:redstone_block"},"extra":[{"bold":true,"color":"dark_green","italic":true,"text":"ver"},{"bold":true,"color":"green","italic":true,"obfuscated":false,"text":" 1.0."},{"bold":true,"color":"green","italic":true,"obfuscated":true,"text":"k"}],"text":""},{"bold":true,click_event:{"action":"run_command",command:"/playsound minecraft:entity.chicken.death master @s ~ ~ ~"},"color":"aqua","italic":true,"text":"= 重要事項 =","underlined":true},""]},is_waxed:0b,allow_op_features:1b}