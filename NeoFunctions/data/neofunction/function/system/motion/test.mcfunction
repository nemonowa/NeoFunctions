# 命名：モーション操作
# 説明：@s を自身の視線方向へ動かす処理を作りたいテスト
# 説明：前方1ブロックとの座標差分から
# 説明：視線方向ベクトルを作り Motion に反映する
# 説明：※すごい簡易的なモーション操作は/function neofunction:entity/skill/jumpとかでやってる
# >
# =/function neofunction:system/motion/test


say test

# X軸
# Pos[0] = X座標：900倍して整数scoreへ変換（小数保持のため）
execute at @s store result score current temp run data get entity @s Pos[0] 900

# 視線方向へ1ブロック進んだ位置のX座標を取得
execute at @s positioned ^ ^ ^1 store result score forward temp run data get entity @s Pos[0] 900

# 差分計算：(現在位置 − 前方位置) → 視線方向ベクトルのX成分になる
scoreboard players operation current temp -= forward temp

# X速度へ反映：-0.01倍して実際の速度スケールへ変換
execute store result entity @s Motion[0] double -9.99 run scoreboard players get current temp

# Y軸：上方向の力を固定で与える
data modify entity @s Motion[1] set value 0.3

# Z軸
execute at @s store result score current temp run data get entity @s Pos[2] 900
execute at @s positioned ^ ^ ^1 store result score forward temp run data get entity @s Pos[2] 900
scoreboard players operation current temp -= forward temp
execute store result entity @s Motion[2] double -9.99 run scoreboard players get current temp

