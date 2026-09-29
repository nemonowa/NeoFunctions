# 命名：check
# 説明：（説明未記載）
# >
# =/function admin:block_to_display/check
 # check.mcfunction
 # 
 #
 # Created by .
##

execute at @s run summon block_display ~ ~ ~ {Tags:["BTDTemp","BTDThis"],teleport_duration:10}

# 表示座標の大まかな調整
execute store result entity @e[tag=BTDThis,limit=1] transformation.translation[0] float 1 run scoreboard players get #CalcX temp
execute store result entity @e[tag=BTDThis,limit=1] transformation.translation[1] float 1 run scoreboard players get #CalcY temp
execute store result entity @e[tag=BTDThis,limit=1] transformation.translation[2] float 1 run scoreboard players get #CalcZ temp

# 内容
data modify storage admin:btd Check.List set from storage admin:btd NormalList
data modify storage admin:btd Check.Function set value "admin:block_to_display/for_check"
function neofunction:asset/nbt/for with storage admin:btd Check

data modify storage admin:btd Check.List set from storage admin:btd StateList
data modify storage admin:btd Check.Function set value "admin:block_to_display/for_check_state"
function neofunction:asset/nbt/for with storage admin:btd Check

# 未登録処理
execute if data entity @e[tag=BTDThis,limit=1] block_state{Name:"minecraft:air"} align xyz run summon shulker ~ ~ ~ {Glowing:1b,NoAI:1b,Invulnerable:1b,PortalCooldown:200,active_effects:[{id:"invisibility",amplifier:127b,duration:-1,show_particles:false}]}
execute if data entity @e[tag=BTDThis,limit=1] block_state{Name:"minecraft:air"} run tellraw @a[gamemode=creative,tag=argonaute] {"text":"未登録のブロックが範囲内に存在します","color": "dark_red","bold": true,"underlined": true}
execute if data entity @e[tag=BTDThis,limit=1] block_state{Name:"minecraft:air"} run kill @e[tag=BTDThis]

# 片付け
tag @e[tag=BTDThis] remove BTDThis