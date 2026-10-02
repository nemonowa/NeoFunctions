# 命名：cancel
# 説明：狙う相手がいなかったときの中止。着地まで落下ダメージを防ぐ（段階 5）
# 実行条件：狙いを付けられなかったプレイヤー
# >/function admin:test/enchant/meteor/aim
# =/function admin:test/enchant/meteor/cancel


# 内容
playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 0.6 1.5
scoreboard players set @s neo.leap 5
