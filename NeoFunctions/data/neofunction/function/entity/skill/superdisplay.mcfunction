# 命名：superdisplay
# 説明：（説明未記載）
# >/function neofunction:entity/skill/clock/1t
# =/function neofunction:entity/skill/superdisplay

# クオータニオン計算を用いる
# 現在のleft_rotationの逆を作用させてからright_rotationを作用させる

# 座標
execute unless score @s SP1p matches -2147483648..2147483647 store result score #CalcX temp run data get entity @s transformation.translation[0] 1000
execute unless score @s SP1p matches -2147483648..2147483647 store result score #CalcY temp run data get entity @s transformation.translation[1] 1000
execute unless score @s SP1p matches -2147483648..2147483647 store result score #CalcZ temp run data get entity @s transformation.translation[2] 1000

# left_rotationの逆
execute unless score @s SP1p matches -2147483648..2147483647 store result score #CalcA temp run data get entity @s transformation.left_rotation[0] -1000
execute unless score @s SP1p matches -2147483648..2147483647 store result score #CalcB temp run data get entity @s transformation.left_rotation[1] -1000
execute unless score @s SP1p matches -2147483648..2147483647 store result score #CalcC temp run data get entity @s transformation.left_rotation[2] -1000
execute unless score @s SP1p matches -2147483648..2147483647 store result score #CalcD temp run data get entity @s transformation.left_rotation[3] 1000

# 計算
execute unless score @s SP1p matches -2147483648..2147483647 run function neofunction:entity/skill/quaternion

# 出力を入力に
execute unless score @s SP1p matches -2147483648..2147483647 run scoreboard players operation #CalcX temp = #CalcX_ temp
execute unless score @s SP1p matches -2147483648..2147483647 run scoreboard players operation #CalcY temp = #CalcY_ temp
execute unless score @s SP1p matches -2147483648..2147483647 run scoreboard players operation #CalcZ temp = #CalcZ_ temp

# 初期値
# 配布時のワールドリセットで消えるので廃止
# 誤差が降り積もっていくためハイブリッドに
execute unless score @s SP1p matches -2147483648..2147483647 store result score @s SP1p run scoreboard players operation @s SP1p = #CalcX temp
execute unless score @s SP5p matches -2147483648..2147483647 store result score @s SP5p run scoreboard players operation @s SP5p = #CalcY temp
execute unless score @s SP10p matches -2147483648..2147483647 store result score @s SP10p run scoreboard players operation @s SP10p = #CalcZ temp

scoreboard players operation #CalcX temp = @s SP1p
scoreboard players operation #CalcY temp = @s SP5p
scoreboard players operation #CalcZ temp = @s SP10p


# right_rotation
execute store result score #CalcA temp run data get entity @s transformation.right_rotation[0] 1000
execute store result score #CalcB temp run data get entity @s transformation.right_rotation[1] 1000
execute store result score #CalcC temp run data get entity @s transformation.right_rotation[2] 1000
execute store result score #CalcD temp run data get entity @s transformation.right_rotation[3] 1000

# 計算
function neofunction:entity/skill/quaternion


# 戻す
execute store result entity @s transformation.translation[0] float 0.001 run scoreboard players get #CalcX_ temp
execute store result entity @s transformation.translation[1] float 0.001 run scoreboard players get #CalcY_ temp
execute store result entity @s transformation.translation[2] float 0.001 run scoreboard players get #CalcZ_ temp

data modify entity @s transformation.left_rotation set from entity @s transformation.right_rotation
data modify entity @s transformation.right_rotation set value [0f,0f,0f,1f]