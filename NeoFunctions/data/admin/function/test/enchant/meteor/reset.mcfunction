# 命名：reset
# 説明：着地したので流星を終える。段階を消す
# 実行条件：段階 5 で地面にいるプレイヤー
# >/enchantment neofunction:test/meteor
# =/function admin:test/enchant/meteor/reset


# 内容
scoreboard players reset @s neo.leap
scoreboard players reset @s neo.leapt
