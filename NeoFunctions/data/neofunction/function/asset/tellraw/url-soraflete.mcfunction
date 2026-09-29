# 命名：OpenURL処理
# 説明：この区画は「進捗タブ：異空の並行世界-NEXUS-」に対応しています。各部屋の看板をクリックして一章の全進捗を達成してください！
# >/execute in neodimension:nexus run tp @s 1281.93 110.00 1304.52 -91.00 28.48
# =/function neofunction:asset/tellraw/url-soraflete


# 内容
# tellraw @s {"text":">>Click to open website<<","color":"dark_aqua","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"click!"}]},click_event:{"action":"open_url",url:"https://sites.google.com/view/soraflete"}}

tellraw @s [{"text":"注：この区画は","color":"white","bold":true,hover_event:{"action":"show_text","value":[{"text":"click to open website!"}]},click_event:{"action":"open_url",url:"https://sites.google.com/view/soraflete"}},{"text":"「進捗タブ：異空の並行世界-NEXUS-」","color":"dark_aqua"},{"text":"に対応しています。各部屋の"},{"text":"看板","color":"light_purple"},{"text":"をクリックして一章の"},{"text":"進捗","color":"dark_purple"},{"text":"を全達成してください！"}]



#/setblock 1283 110 1304 minecraft:birch_wall_sign[facing=west,waterlogged=false]{front_text:{color:"white",has_glowing_text:1b,messages:['"Sora Flete"','{"clickEvent":{"action":"run_command","value":"/function neofunction:asset/tellraw/url-soraflete"},"text":"Copyright ©"}','{"clickEvent":{"action":"run_command","value":"/playsound minecraft:entity.parrot.ambient master @s ~ ~ ~ 10 0.5 1"},"text":"2010-2028 SoraFlete."}','"All Rights Resarved."']},is_waxed:0b}


