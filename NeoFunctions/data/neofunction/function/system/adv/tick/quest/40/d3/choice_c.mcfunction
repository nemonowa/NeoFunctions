# 命名：choice_c
# 説明：選択 C を選んだ：c＝reveal（広場で明かす。trust.town +1。終章で灯籠の支えが入る）・hide（伏せる）
# 実行条件：実行者 プレイヤー。#temp main_story 431。引数 c
# >/function neofunction:system/adv/tick/quest/40/choice
# =/function neofunction:system/adv/tick/quest/40/d3/choice_c

# 内容
execute unless score #temp main_story matches 431 run return 0
execute if data storage neofunction:rubra choice.reveal run return 0
$data modify storage neofunction:rubra choice.reveal set value "$(c)"
scoreboard players set #temp main_story 432
$function neofunction:system/adv/tick/quest/40/d3/choice_c_$(c)
