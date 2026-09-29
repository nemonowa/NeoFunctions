# 命名：=/function admin:macro
# 説明：ショートカット
# 実行条件：手動
# >
# =/function admin:.neo/macro



# 内容
###発動用
#/function neofunction:admin/macro {macro:任意}
#/function neofunction:admin/macro with storage minecraft:test test

##/data modify storage minecraft:test test set value {macro:ice}
##/execute store result storage minecraft:test test.macro int 3 run scoreboard players get @s ATK \\@sのatkの三倍の値をストレージに保存


#Compound
$tellraw @a "$(macro)"

#Compound
#$damage @s $(macro) minecraft:cactus