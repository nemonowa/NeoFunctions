# 命名：shot
# 説明：終焉の星の発射。ほぼ真上へ強く撃った矢なら、印を付けて爆心（マーカー）を作り、矢を追い始める
# 実行条件：星葬弓「終焉」から撃たれた矢（エンチャントの run_function から）
# >/enchantment neofunction:shuuen
# =/function neofunction:asset/enchantment/shuuen/shot


# 内容
function neofunction:asset/enchantment/core/init
execute store result score #vy neo.nk_tmp run data get entity @s Motion[1] 100
execute if score #vy neo.nk_tmp matches ..199 run return fail
execute on owner if score @s neo.nk_busy matches 1.. run return fail
execute on owner unless score @s neo.nk_id matches 1.. store result score @s neo.nk_id run scoreboard players add #next neo.nk_id 1
execute on owner run scoreboard players set @s neo.nk_busy 1
execute on owner run scoreboard players operation #cur neo.nk_id = @s neo.nk_id
scoreboard players operation @s neo.nk_id = #cur neo.nk_id
tag @s add neo.nk_arrow
data merge entity @s {Glowing:1b}
summon minecraft:marker ~ ~ ~ {Tags:["neo.nuke","neo.nk_new"]}
scoreboard players operation @e[type=marker,tag=neo.nk_new] neo.nk_id = #cur neo.nk_id
scoreboard players set @e[type=marker,tag=neo.nk_new] neo.nk_kind 3
scoreboard players set @e[type=marker,tag=neo.nk_new] neo.nk_t 0
scoreboard players set @e[type=marker,tag=neo.nk_new] neo.nk_h 0
tag @e[type=marker,tag=neo.nk_new] remove neo.nk_new
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 4 1.5
schedule function neofunction:asset/enchantment/core/loop 1t replace
