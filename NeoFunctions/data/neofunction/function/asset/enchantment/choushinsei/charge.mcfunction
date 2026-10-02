# 命名：charge
# 説明：超新星のため。しゃがんでいるあいだ毎 tick 1 ずつためる（neo.nk_h）。光が体に集まり、60（3 秒）で炸裂の開始へ
# 実行条件：超新星の鎧を着てしゃがんでいる、使用中でないプレイヤー（エンチャントの tick から）
# >/enchantment neofunction:choushinsei
# =/function neofunction:asset/enchantment/choushinsei/charge


# 内容
function neofunction:asset/enchantment/core/init
scoreboard players add @s neo.nk_h 1
particle minecraft:portal ~ ~1 ~ 0 0 0 3 12 force
particle minecraft:end_rod ~ ~1 ~ 0.4 0.6 0.4 0.01 2 force
execute if score @s neo.nk_h matches 1..9 run title @s actionbar [{"text":"超新星 ","color":"light_purple","bold":true},{"text":"■","color":"white"},{"text":"□□□□□","color":"dark_gray"}]
execute if score @s neo.nk_h matches 10..19 run title @s actionbar [{"text":"超新星 ","color":"light_purple","bold":true},{"text":"■■","color":"white"},{"text":"□□□□","color":"dark_gray"}]
execute if score @s neo.nk_h matches 20..29 run title @s actionbar [{"text":"超新星 ","color":"light_purple","bold":true},{"text":"■■■","color":"white"},{"text":"□□□","color":"dark_gray"}]
execute if score @s neo.nk_h matches 30..39 run title @s actionbar [{"text":"超新星 ","color":"light_purple","bold":true},{"text":"■■■■","color":"white"},{"text":"□□","color":"dark_gray"}]
execute if score @s neo.nk_h matches 40..49 run title @s actionbar [{"text":"超新星 ","color":"light_purple","bold":true},{"text":"■■■■■","color":"aqua"},{"text":"□","color":"dark_gray"}]
execute if score @s neo.nk_h matches 50..59 run title @s actionbar [{"text":"超新星 ","color":"light_purple","bold":true},{"text":"■■■■■■","color":"aqua","bold":true}]
execute if score @s neo.nk_h matches 1 run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 2 0.6
execute if score @s neo.nk_h matches 20 run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 2 0.9
execute if score @s neo.nk_h matches 40 run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 2 1.3
execute if score @s neo.nk_h matches 60.. run function neofunction:asset/enchantment/choushinsei/start
