# 命名：fall
# 説明：槍の落下。毎 tick 速さを上げながら下ろし（高さ×10 を #nk_h、速さ×10 を #nk_v（temp。爆心の data.h・data.v に保存））。爆心の上 15 に着いたら着弾へ
# 実行条件：爆心として、その位置で（temp の #nk_cur に番号）
# >/function neofunction:asset/enchantment/tentsui/tick
# =/function neofunction:asset/enchantment/tentsui/fall


# 内容
scoreboard players operation #nk_h temp -= #nk_v temp
scoreboard players add #nk_v temp 3
execute if score #nk_h temp matches ..150 run scoreboard players set #nk_h temp 150
execute store result storage neofunction:enchantment fall.h float 0.1 run scoreboard players get #nk_h temp
function neofunction:asset/enchantment/tentsui/fall_tp with storage neofunction:enchantment fall
execute as @e[type=item_display,tag=neo.nk_spear] if score @s neo.nk_id = #nk_cur temp run tag @s add neo.nk_this
execute at @e[type=item_display,tag=neo.nk_this,limit=1] run particle minecraft:flame ~ ~8 ~ 1 6 1 0.03 40 force
execute at @e[type=item_display,tag=neo.nk_this,limit=1] run particle minecraft:end_rod ~ ~12 ~ 0.5 8 0.5 0.02 20 force
execute at @e[type=item_display,tag=neo.nk_this,limit=1] run particle minecraft:large_smoke ~ ~20 ~ 1 6 1 0.01 10 force
tag @e[tag=neo.nk_this] remove neo.nk_this
particle minecraft:dust{color:[1.0,0.0,0.0],scale:1.5} ~ ~30 ~ 0 30 0 0 30 force
execute if score #nk_h temp matches 151.. run return run scoreboard players set #nk_t temp 41
scoreboard players set #nk_t temp 60
