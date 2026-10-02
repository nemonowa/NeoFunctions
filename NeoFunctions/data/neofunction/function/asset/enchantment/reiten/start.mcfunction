# 命名：start
# 説明：零点崩壊の開始。叩きつけた場所の地面に爆心を置き、上 12 に黒い球を出す
# 実行条件：零点鎚「崩壊」で落下攻撃を当てたプレイヤー（エンチャントの run_function から）
# >/enchantment neofunction:reiten
# =/function neofunction:asset/enchantment/reiten/start


# 内容
function neofunction:asset/enchantment/core/init
execute if score @s neo.nk_st matches 1000.. run return fail
execute unless score @s neo.nk_id matches 1.. store result score @s neo.nk_id run scoreboard players add #nk_next temp 1
scoreboard players set @s neo.nk_st 1000
scoreboard players operation #nk_cur temp = @s neo.nk_id
summon minecraft:marker ~ ~ ~ {Tags:["neo.nuke","neo.nk_new"],data:{kind:2,t:0,r:-1,h:0,v:0}}
scoreboard players operation @e[type=marker,tag=neo.nk_new] neo.nk_id = #nk_cur temp
scoreboard players set #nk_g temp 0
execute as @e[type=marker,tag=neo.nk_new] at @s run function neofunction:asset/enchantment/core/ground
execute at @e[type=marker,tag=neo.nk_new,limit=1] run function neofunction:asset/enchantment/reiten/orb
execute at @e[type=marker,tag=neo.nk_new,limit=1] run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 20 0.5
tag @e[type=marker,tag=neo.nk_new] remove neo.nk_new
