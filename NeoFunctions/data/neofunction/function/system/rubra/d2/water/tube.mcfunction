# 命名：tube
# 説明：【追加：2026-10-09 ルブラ編】水量の柱（ガラスの管の中、目印の所から上へ 3 マス）を、スコア s の水位（0〜3）にする。水は流れない源のブロックで置く
# 実行条件：実行位置 柱の目印（管のいちばん下の中）。引数 s（temp の偽プレイヤー名）
# >/function neofunction:system/rubra/d2/water/apply
# =/function neofunction:system/rubra/d2/water/tube

# 内容
fill ~ ~ ~ ~ ~2 ~ minecraft:air replace minecraft:water
$execute if score $(s) temp matches 1.. run setblock ~ ~ ~ minecraft:water
$execute if score $(s) temp matches 2.. run setblock ~ ~1 ~ minecraft:water
$execute if score $(s) temp matches 3.. run setblock ~ ~2 ~ minecraft:water
