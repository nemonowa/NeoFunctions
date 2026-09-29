# 命名：amethyst
# 説明：
# >
# =/function neofunction:asset/event/prologue/amethyst


# 内容
tellraw @s {"text":"\n貴方の軌跡こそが地図となるのだ！！","color":"gray","bold":true,"italic":false}
playsound minecraft:neo/entity/ceresta/10 record @s ~ ~ ~ 100000 1 0

particle minecraft:sweep_attack ~ ~ ~ 0 0 0 1 10 normal
particle minecraft:sweep_attack ~ ~ ~ 0 0 0 1 10 normal