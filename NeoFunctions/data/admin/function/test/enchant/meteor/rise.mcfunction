# 命名：rise
# 説明：上昇中。時間を数え、0 になったら狙いを付ける
# 実行条件：段階 1 のプレイヤー（毎 tick）
# >/enchantment neofunction:test/meteor
# =/function admin:test/enchant/meteor/rise


# 内容
scoreboard players remove @s neo.leapt 1
particle minecraft:cloud ~ ~ ~ 0.2 0.1 0.2 0 2
execute if score @s neo.leapt matches ..0 run function admin:test/enchant/meteor/aim
