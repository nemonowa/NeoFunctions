# 命名：dark_lit
# 説明：星核の欠片の灯り。暗闇を消して暗視
# 実行条件：実行者 プレイヤー（オフハンドに星核の欠片）
# >/function neofunction:system/adv/tick/dungeon/rubra1/dark
# =/function neofunction:system/adv/tick/dungeon/rubra1/dark_lit

# 内容
effect clear @s minecraft:darkness
effect give @s minecraft:night_vision 12 0 true
particle minecraft:dust{color:[1.0,0.35,0.25],scale:1.0} ~ ~1 ~ 0.4 0.4 0.4 0 3 normal
