# 命名：dash
# 説明：突進の開始。段階を 3（突進中）にする
# 実行条件：段階 2 のプレイヤー（エンチャントが突進の勢いを足した直後）
# >/enchantment neofunction:test/meteor
# =/function admin:test/enchant/meteor/dash


# 内容
scoreboard players set @s neo.leap 3
