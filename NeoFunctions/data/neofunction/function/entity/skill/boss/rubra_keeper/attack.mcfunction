# 命名：attack
# 説明：番人の攻撃を選ぶ（3.5 秒ごと）：1 黒い水の鞭、2 黒い水溜まり、3 黒い滴りを呼ぶ
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_keeper/tick
# =/function neofunction:entity/skill/boss/rubra_keeper/attack

# 内容
execute store result score #rubra_r temp run random value 1..3
execute if score #rubra_r temp matches 1 run return run function neofunction:entity/skill/boss/rubra_keeper/whip_start
execute if score #rubra_r temp matches 2 run return run function neofunction:entity/skill/boss/rubra_keeper/puddle
function neofunction:entity/skill/boss/rubra_keeper/attack_drip
