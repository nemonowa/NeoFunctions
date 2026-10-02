# 命名：place
# 説明：爆心（マーカー）を置いて地面まで下ろし、進行を動かす
# 実行条件：本人として、狙った位置で
# >/function neofunction:asset/enchantment/tentsui/ray
# =/function neofunction:asset/enchantment/tentsui/place


# 内容
scoreboard players operation #cur neo.nk_id = @s neo.nk_id
summon minecraft:marker ~ ~ ~ {Tags:["neo.nuke","neo.nk_new"]}
scoreboard players operation @e[type=marker,tag=neo.nk_new] neo.nk_id = #cur neo.nk_id
scoreboard players set @e[type=marker,tag=neo.nk_new] neo.nk_kind 1
scoreboard players set @e[type=marker,tag=neo.nk_new] neo.nk_t 0
scoreboard players set #g neo.nk_tmp 0
execute as @e[type=marker,tag=neo.nk_new] at @s run function neofunction:asset/enchantment/core/ground
execute as @e[type=marker,tag=neo.nk_new] at @s align xz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
execute at @e[type=marker,tag=neo.nk_new,limit=1] run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 6 0.5
tag @e[type=marker,tag=neo.nk_new] remove neo.nk_new
schedule function neofunction:asset/enchantment/core/loop 1t replace
