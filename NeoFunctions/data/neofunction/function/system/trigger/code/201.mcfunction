# 命名：201
# 説明：トリガー
# >/function neofunction:system/trigger/code
# =/function neofunction:system/trigger/code/201



# 内容

# 移動：テレポート
execute as @s at @s run tp @s ~ ~ ~14 ~ ~
execute as @s at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 0.3 2 0
execute as @s at @s run particle minecraft:portal ~ ~ ~ 0.1 0.1 0.1 0.3 90 force

# 移動通知
execute as @s at @s run title @s subtitle {"text":"次の階層へ","color":"dark_aqua","italic":false}
execute as @s at @s run title @s title {"text":"～2nd Room～","color":"dark_aqua","bold":true,"italic":false}