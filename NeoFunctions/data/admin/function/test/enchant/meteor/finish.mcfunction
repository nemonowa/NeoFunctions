# 命名：finish
# 説明：爆発の後。狙いの印を消し、着地まで落下ダメージを防ぐ（段階 5）
# 実行条件：段階 4 のプレイヤー（エンチャントが爆発を起こした直後）
# >/enchantment neofunction:test/meteor
# =/function admin:test/enchant/meteor/finish


# 内容
tag @e[tag=neo.leap_target,distance=..32] remove neo.leap_target
particle minecraft:lava ~ ~ ~ 1 0.5 1 0 20
scoreboard players set @s neo.leap 5
