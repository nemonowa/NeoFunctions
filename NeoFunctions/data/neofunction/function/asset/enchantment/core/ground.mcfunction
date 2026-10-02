# 命名：ground
# 説明：爆心を真下の地面まで下ろす（最大 200 ブロック）
# 実行条件：爆心（マーカー）として
# >/function neofunction:asset/enchantment/tentsui/place
# =/function neofunction:asset/enchantment/core/ground


# 内容
scoreboard players add #g neo.nk_tmp 1
execute if score #g neo.nk_tmp matches ..200 if block ~ ~-1 ~ #minecraft:replaceable run tp @s ~ ~-1 ~
execute if score #g neo.nk_tmp matches ..200 at @s if block ~ ~-1 ~ #minecraft:replaceable run function neofunction:asset/enchantment/core/ground
