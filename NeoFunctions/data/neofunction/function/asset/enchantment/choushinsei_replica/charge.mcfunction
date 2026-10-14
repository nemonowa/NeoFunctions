# 命名：charge
# 説明：【追加：2026-10-09 ルブラ編】星核鎧「超新星」の写しのため：しゃがんでいるあいだ毎 tick 1 ずつためる（neo.nk_st の 1〜40）。40（2 秒）で小さな超新星（nova）
# 説明：スコアは神器と同じ neo.nk_st を使う（写しは 1〜40 と、待ちの -200〜-1 だけ）
# 実行条件：写しの鎧を着てしゃがんでいる、待ちでないプレイヤー（エンチャントの tick から）
# >/enchantment neofunction:choushinsei_replica
# =/function neofunction:asset/enchantment/choushinsei_replica/charge

# 内容
function neofunction:asset/enchantment/core/init
scoreboard players add @s neo.nk_st 1
particle minecraft:end_rod ~ ~1 ~ 0.4 0.6 0.4 0.01 1 force
execute if score @s neo.nk_st matches 1..19 run title @s actionbar [{"text":"小さな超新星 ","color":"aqua","bold":true},{"text":"■","color":"white"},{"text":"□","color":"dark_gray"}]
execute if score @s neo.nk_st matches 20..39 run title @s actionbar [{"text":"小さな超新星 ","color":"aqua","bold":true},{"text":"■■","color":"white"}]
execute if score @s neo.nk_st matches 1 run playsound minecraft:block.beacon.ambient player @a[distance=..16] ~ ~ ~ 1 0.9
execute if score @s neo.nk_st matches 40.. at @s run function neofunction:asset/enchantment/choushinsei_replica/nova
