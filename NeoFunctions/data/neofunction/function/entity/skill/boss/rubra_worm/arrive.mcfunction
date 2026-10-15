# 命名：arrive
# 説明：目標に着いたとき。地中で狙いの真下→予告、突進の始まりの真下→突進の予告、のしかかりの真下→高く跳ぶ、てっぺん→砂の吐息のあと下りる、のしかかりの上→落ちる前の予告、落ちきった→のしかかりの当たり、潜りきった→地響きと次の技
# 実行条件：実行者 本体
# >/function neofunction:entity/skill/boss/rubra_worm/move
# =/function neofunction:entity/skill/boss/rubra_worm/arrive

# 内容
execute if data storage neofunction:rubra worm{state:"under"} run return run function neofunction:entity/skill/boss/rubra_worm/warn_start
execute if data storage neofunction:rubra worm{state:"under_c"} at @s run return run function neofunction:entity/skill/boss/rubra_worm/charge_warn_start
execute if data storage neofunction:rubra worm{state:"under_s"} at @s run return run function neofunction:entity/skill/boss/rubra_worm/slam_rise
execute if data storage neofunction:rubra worm{state:"up"} at @s run function neofunction:entity/skill/boss/rubra_worm/breath
execute if data storage neofunction:rubra worm{state:"up"} run return run function neofunction:entity/skill/boss/rubra_worm/go_down
execute if data storage neofunction:rubra worm{state:"s_up"} run return run function neofunction:entity/skill/boss/rubra_worm/slam_wait_start
execute if data storage neofunction:rubra worm{state:"s_down"} at @s run return run function neofunction:entity/skill/boss/rubra_worm/slam_hit
execute if data storage neofunction:rubra worm{state:"down"} at @s run function neofunction:entity/skill/boss/rubra_worm/quake_start
execute if data storage neofunction:rubra worm{state:"down"} at @s run return run function neofunction:entity/skill/boss/rubra_worm/plan
