# 命名：錬成のトーテム 発動処理
# 説明：錬成のトーテム（ID1857 / エピック）の使用時処理。回復量を最大体力から算出して heal に渡し、追加効果を付与する
# 実行条件：used_totem 進捗の報酬として実行者（プレイヤー）に対して実行
# >/advancement neofunction:used_totem/1857
# =/function neofunction:system/adv/used_totem/1857

# 内容
# 回復量：最大体力から算出して heal へ渡す
execute store result score @s heal run attribute @s minecraft:max_health get 0.3

# 追加効果
effect give @s minecraft:regeneration 60 2 true
effect give @s minecraft:fire_resistance 60 0 true
effect give @s minecraft:absorption 60 2 true
