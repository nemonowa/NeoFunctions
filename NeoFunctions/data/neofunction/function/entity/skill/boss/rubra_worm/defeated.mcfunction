# 命名：defeated
# 説明：【追加：2026-10-08 ルブラ編】戦いの途中なのに本体がいない（崩れる演出を通らずに倒れた）ときの取りこぼし対策：残りを片付け、真ん中の穴のそばに星の血晶を落として 416 へ
# 実行条件：実行者 プレイヤー（大空洞）。#temp main_story 415
# >/function neofunction:system/adv/tick/quest/40/d1/zone
# =/function neofunction:entity/skill/boss/rubra_worm/defeated

# 内容
data modify storage neofunction:rubra worm.state set value "dead"
kill @e[tag=rubra_worm_part]
execute in neodimension:ceresta_festa positioned 812.5 -39 3266.5 run loot spawn ~ ~ ~ loot neofunction:item/1868
execute in neodimension:ceresta_festa positioned 812.5 -39 3266.5 run function neofunction:system/adv/tick/quest/40/d1/416
