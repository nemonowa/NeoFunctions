# 命名：l4
# 説明：星の台の間：台から出る光の筋と、謎が解けたあとの乗り場のトロッコ
# 実行条件：実行者 プレイヤー（四の層 y10〜22）
# >/function neofunction:system/adv/tick/dungeon/rubra1
# =/function neofunction:system/adv/tick/dungeon/rubra1/l4

# 内容
function neofunction:system/rubra/d1/ped/beams
execute if data storage neofunction:rubra d1{solved:1b} positioned 837.5 13 3273.5 unless entity @e[type=minecart,distance=..2] run summon minecart ~ ~ ~ {Tags:["rubra_d1"]}
