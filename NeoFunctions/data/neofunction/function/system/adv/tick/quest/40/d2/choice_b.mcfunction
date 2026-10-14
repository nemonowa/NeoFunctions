# 命名：choice_b
# 説明：【追加：2026-10-09 ルブラ編】選択 B を選んだ：c＝stop（止めると伝える。【変更：2026-10-14】戦いはやめた）・listen（本線）・go（断られるが trust.selen +1）
# 実行条件：実行者 プレイヤー。#temp main_story 428。引数 c
# >/function neofunction:system/adv/tick/quest/40/choice
# =/function neofunction:system/adv/tick/quest/40/d2/choice_b

# 内容
execute unless score #temp main_story matches 428 run return 0
execute if data storage neofunction:rubra choice.selen run return 0
$data modify storage neofunction:rubra choice.selen set value "$(c)"
$function neofunction:system/adv/tick/quest/40/d2/choice_b_$(c)
