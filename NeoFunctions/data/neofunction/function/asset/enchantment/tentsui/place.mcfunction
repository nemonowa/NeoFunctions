# 命名：place
# 説明：爆心（マーカー）を置いて地面まで下ろし、進行を動かす
# 実行条件：本人として、狙った位置で
# >/function neofunction:asset/enchantment/tentsui/ray
# =/function neofunction:asset/enchantment/tentsui/place


# 内容
scoreboard players operation #nk_cur temp = @s neo.nk_id
summon minecraft:marker ~ ~ ~ {Tags:["neo.nuke","neo.nk_new"],data:{kind:1,t:0,r:-1,h:0,v:0}}
scoreboard players operation @e[type=marker,tag=neo.nk_new] neo.nk_id = #nk_cur temp
scoreboard players set #nk_g temp 0
execute as @e[type=marker,tag=neo.nk_new] at @s run function neofunction:asset/enchantment/core/ground
execute as @e[type=marker,tag=neo.nk_new] at @s align xz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
execute at @e[type=marker,tag=neo.nk_new,limit=1] run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 6 0.5
tag @e[type=marker,tag=neo.nk_new] remove neo.nk_new
schedule function neofunction:asset/enchantment/core/loop 1t replace
