# 命名：ray
# 説明：見ている方向へ 0.5 ブロックずつ進み、ブロックに当たるか 64 ブロックで爆心を置く
# 実行条件：本人として、目の位置から本人の向きで
# >/function neofunction:asset/enchantment/tentsui/start
# =/function neofunction:asset/enchantment/tentsui/ray


# 内容
scoreboard players add #nk_ray temp 1
execute unless block ~ ~ ~ #minecraft:replaceable positioned ^ ^ ^-0.5 run return run function neofunction:asset/enchantment/tentsui/place
execute if score #nk_ray temp matches 128.. run return run function neofunction:asset/enchantment/tentsui/place
execute positioned ^ ^ ^0.5 run function neofunction:asset/enchantment/tentsui/ray
