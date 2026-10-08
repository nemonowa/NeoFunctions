# 命名：dark
# 説明：【追加：2026-10-08 ルブラ編】紅脈の坑の三の層より下の暗闇。オフハンドに星核の欠片（1867）があれば照らす
# 実行条件：実行者 プレイヤー（y30 以下）
# >/function neofunction:system/adv/tick/dungeon/rubra1
# =/function neofunction:system/adv/tick/dungeon/rubra1/dark

# 内容
execute if items entity @s weapon.offhand minecraft:red_dye[minecraft:custom_model_data={floats:[1867.0f]}] run return run function neofunction:system/adv/tick/dungeon/rubra1/dark_lit
effect give @s minecraft:darkness 3 0 true
