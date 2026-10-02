# 命名：land
# 説明：突進中に地面に着いたら、その場で爆発（段階 4）へ
# 実行条件：段階 3 で地面にいるプレイヤー
# >/enchantment neofunction:test/meteor
# =/function admin:test/enchant/meteor/land


# 内容
scoreboard players set @s neo.leap 4
