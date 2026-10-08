# 命名：cavern
# 説明：【追加：2026-10-08 ルブラ編】大空洞：下の乗り場のトロッコ（上へ戻る用）
# 実行条件：実行者 プレイヤー（大空洞 y-34 以下）
# >/function neofunction:system/adv/tick/dungeon/rubra1
# =/function neofunction:system/adv/tick/dungeon/rubra1/cavern

# 内容
execute positioned 828.5 -39 3263.5 unless entity @e[type=minecart,distance=..3] run summon minecart ~ ~ ~ {Tags:["rubra_d1"]}
