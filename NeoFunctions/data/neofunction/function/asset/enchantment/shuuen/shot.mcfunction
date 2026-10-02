# 命名：shot
# 説明：終焉の星の発射。ほぼ真上へ強く撃った矢なら、印を付けて爆心（マーカー）を作り、矢を追い始める
# 実行条件：星葬弓「終焉」から撃たれた矢（エンチャントの run_function から）
# >/enchantment neofunction:shuuen
# =/function neofunction:asset/enchantment/shuuen/shot


# 内容
function neofunction:asset/enchantment/core/init
execute store result score #nk_vy temp run data get entity @s Motion[1] 100
execute if score #nk_vy temp matches ..199 run return fail
execute on owner if score @s neo.nk_st matches 1000.. run return fail
execute on owner unless score @s neo.nk_id matches 1.. store result score @s neo.nk_id run scoreboard players add #nk_next temp 1
execute on owner run scoreboard players set @s neo.nk_st 1000
execute on owner run scoreboard players operation #nk_cur temp = @s neo.nk_id
scoreboard players operation @s neo.nk_id = #nk_cur temp
tag @s add neo.nk_arrow
data merge entity @s {Glowing:1b}
summon minecraft:marker ~ ~ ~ {Tags:["neo.nuke","neo.nk_new"],data:{kind:3,t:0,r:-1,h:0,v:0}}
scoreboard players operation @e[type=marker,tag=neo.nk_new] neo.nk_id = #nk_cur temp
tag @e[type=marker,tag=neo.nk_new] remove neo.nk_new
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 4 1.5
schedule function neofunction:asset/enchantment/core/loop 1t replace
