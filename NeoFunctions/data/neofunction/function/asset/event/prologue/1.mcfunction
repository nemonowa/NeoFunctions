# 命名：1
# 説明：
# >
# =/function neofunction:asset/event/prologue/1


# 内容
playsound minecraft:neo/entity/ceresta/1 master @s ~ ~ ~ 100000 1 0

tellraw @s {"text":"\n澄み切った蒼空のもとに晴天。","color":"gray","bold":true,"italic":false}

playsound minecraft:item.elytra.flying record @s ~ ~ ~ 1 0.5 1

#particle minecraft:sweep_attack ~ ~ ~ 0 0 0 1 10 normal
#particle minecraft:sweep_attack ~ ~ ~ 0 0 0 1 10 normal