# 命名：setup_in
# 説明：終章の目印を置き直す：古いもの（タグ rubra_fin）を消し、目印とヴァルカを置き、記録を初めに戻す
# 実行条件：セレスタ次元
# >/function neofunction:system/rubra/fin/setup_2
# =/function neofunction:system/rubra/fin/setup_in

# 内容
function neofunction:entity/skill/boss/rubra_void/clean
tag @e[type=ghast,tag=rubra_fin] add del
tag @e[type=allay,tag=rubra_fin] add del
tag @e[type=zombie,tag=rubra_fin_drip] add del
kill @e[type=!ghast,type=!allay,type=!player,tag=rubra_fin]
function neofunction:system/rubra/fin/points
data modify storage neofunction:rubra fin set value {state:"none",retry:0b}
tellraw @a[gamemode=creative] {"text":"Ready! > neofunction:system/rubra/fin/setup（終章の目印を置きました）","color":"gray"}
