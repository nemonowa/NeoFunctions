# 命名：4
# 説明：
# >
# =/function neofunction:asset/event/prologue/4


# 内容
tellraw @s {"text":"\nあなたは旅の途中、スコールに襲われた。","color":"gray","bold":true,"italic":false}
playsound minecraft:neo/entity/ceresta/4 record @s ~ ~ ~ 100000 1 0


#execute as @s run clear @s minecraft:compass
#give @s minecraft:compass[minecraft:custom_name=[{"text":"|","color":"#FFFF00","bold":true,"italic":false,"obfuscated":true},{"text":"|","color":"#7FFF00"},{"text":"|","color":"#00FF00"},{"text":"|","color":"#00FF7F"},{"text":"|","color":"#00FF00"},{"text":"|","color":"#7FFF00"},{"text":"|","color":"#FFFF00"},{"text":" 未知の計器 ","color":"#FEEEED","bold":false,"italic":false,"underlined":false,"obfuscated":false},{"text":"|","color":"#FFFF00"},{"text":"|","color":"#7FFF00"},{"text":"|","color":"#00FF00"},{"text":"|","color":"#00FF7F"},{"text":"|","color":"#00FF00"},{"text":"|","color":"#7FFF00"},{"text":"|","color":"#FFFF00"}],minecraft:lore=[{"text":"謎の透明球体。超文明の面影を感じるが、使い方を思い出せない。","color":"light_purple","bold":false,"italic":true},[{"text":"Story:","color":"green","bold":true,"italic":false},{"text":"*","color":"#FFE33B","obfuscated":true}]],minecraft:custom_model_data={floats:[994.0f]},minecraft:lodestone_tracker={target:{pos:[I;861,45,1045],dimension:"neodimension:ceresta_festa"},tracked:false},minecraft:custom_data={check:1}] 1
