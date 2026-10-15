# 命名：attack2
# 説明：技を選ぶ（第 2 形態）：天墜・環状の衝撃波・渦の弾幕・床を薙ぐ光線・黒い滴り
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/attack
# =/function neofunction:entity/skill/boss/rubra_void/attack2

# 内容
execute store result score #rv_r temp run random value 1..6
execute if score #rv_r temp matches 1..2 run return run function neofunction:entity/skill/boss/rubra_void/meteor_start
execute if score #rv_r temp matches 3 run return run function neofunction:entity/skill/boss/rubra_void/ring_start
execute if score #rv_r temp matches 4 run return run data modify storage neofunction:rubra fin merge value {a:6,c:60}
execute if score #rv_r temp matches 5 run return run function neofunction:entity/skill/boss/rubra_void/beam_start
function neofunction:entity/skill/boss/rubra_void/drip
