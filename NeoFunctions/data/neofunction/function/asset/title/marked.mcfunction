# 命名：エリアタイトルフラッグ
# 説明：アンカーに接近したときにエリアタイトルを出す
# >/function neofunction:player/tick
# =/function neofunction:asset/title/marked


# 説明：
tag @s add marked

# 演出：
playsound minecraft:block.amethyst_block.step ambient @s ~ ~ ~ 1 0.1 1

title @s subtitle [{"color":"#29A2FF","text":"⌖ "},{"color":"#2BAAE9","text":"A"},{"color":"#2DB3D4","text":"r"},{"color":"#30BBBE","text":"r"},{"color":"#32C4A9","text":"i"},{"color":"#34CC93","text":"v"},{"color":"#36D57E","text":"e"},{"color":"#38DD68","text":"d "},{"color":"#3AE653","text":"a"},{"color":"#3DEE3D","text":"t "},{"color":"#3FF728","text":"t"},{"color":"#41FF12","text":"h"},{"color":"#3FF728","text":"e "},{"color":"#3DEE3D","text":"L"},{"color":"#3AE653","text":"o"},{"color":"#38DD68","text":"c"},{"color":"#36D57E","text":"a"},{"color":"#34CC93","text":"t"},{"color":"#32C4A9","text":"i"},{"color":"#30BBBE","text":"o"},{"color":"#2DB3D4","text":"n "},{"color":"#29A2FF","text":"⌖"}]

title @s title {"nbt":"CustomName","entity":"@e[distance=..8,tag=marked]","interpret":true}

# 未解析（進捗を持っていない）なら通知
# マクロ化
execute as @e[distance=..16,tag=marked,type=armor_stand] at @s run function neofunction:asset/nbt/for_in_range {Function:"neofunction:asset/title/marked_for",Min:1,Max:300}



