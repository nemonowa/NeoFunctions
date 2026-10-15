# 命名：choice_a
# 説明：選択 A を選んだ：c＝mira（trust.mira +1）・ordo（trust.ordo +1）・quiet（何も変わらない）。それぞれの返事のあと、ミラは館を出ていく
# 実行条件：実行者 プレイヤー。#temp main_story 421。引数 c
# >/function neofunction:system/adv/tick/quest/40/choice
# =/function neofunction:system/adv/tick/quest/40/d2/choice_a

# 内容
execute unless score #temp main_story matches 421 run return 0
execute if data storage neofunction:rubra choice.council run return 0
$data modify storage neofunction:rubra choice.council set value "$(c)"
$function neofunction:system/adv/tick/quest/40/d2/choice_a_$(c)
