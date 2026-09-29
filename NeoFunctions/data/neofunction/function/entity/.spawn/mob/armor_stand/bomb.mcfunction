# 命名：bomb
# 説明：スペルサイン処理
# 説明：/execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,distance=..4] run function neofunction:entity/.spawn/mob/armor_stand/spellsign
# >/function neofunction:entity/.spawn/mob/armor_stand/.neo
# =/function neofunction:entity/.spawn/mob/armor_stand/bomb



# 内容
data merge block ~ ~1 ~ {front_text:{color:"black",has_glowing_text:0b,messages:[{"bold":true,click_event:{"action":"run_command",command:"/execute at @p as @e[distance=..32,tag=enemy] run damage @s 99.9 minecraft:explosion"},"color":"light_purple","italic":false,"text":"۞スペルサイン۞","underlined":true},{"bold":false,click_event:{"action":"run_command",command:"/execute as @a[distance=..32] run damage @s 99.9 minecraft:explosion"},"color":"red","italic":false,"text":"「自爆装置」"},{"bold":false,click_event:{"action":"run_command",command:"playsound minecraft:entity.generic.explode master @a[distance=..32] ~ ~ ~ 1 0.5"},"color":"red","underlined":true,"italic":false,"text":"押すなよ！絶対に押すなよ！！"},{click_event:{"action":"run_command",command:"/fill ~ ~-1 ~ ~ ~ ~ air replace"},"color":"white","italic":false,"text":"/damege"}]},is_waxed:1b,allow_op_features:1b}


