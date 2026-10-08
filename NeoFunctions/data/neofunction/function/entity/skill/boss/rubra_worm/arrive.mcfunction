# 命名：arrive
# 説明：【追加：2026-10-08 ルブラ編】目標に着いたとき：地中で狙いの真下に着いた→予告、てっぺんに着いた→下りる、下りきった→次の狙い
# 実行条件：実行者 本体
# >/function neofunction:entity/skill/boss/rubra_worm/move
# =/function neofunction:entity/skill/boss/rubra_worm/arrive

# 内容
execute if data storage neofunction:rubra worm{state:"under"} run return run function neofunction:entity/skill/boss/rubra_worm/warn_start
execute if data storage neofunction:rubra worm{state:"up"} run return run function neofunction:entity/skill/boss/rubra_worm/go_down
execute if data storage neofunction:rubra worm{state:"down"} at @s run return run function neofunction:entity/skill/boss/rubra_worm/plan
