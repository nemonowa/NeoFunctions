# 命名：choice
# 説明：【追加：2026-10-08 ルブラ編】チャットの選択肢を押したとき（/trigger code set 4000〜4999）の振り分け。番号は「章の進み具合 3 桁＋選択肢 1 桁」
# 説明：4161 第一章 欠片を埋め戻す ／ 4162 第一章 欠片を持ち帰る
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/trigger/code
# >/trigger code set 4161
# =/function neofunction:system/adv/tick/quest/40/choice

# 内容
execute if score @s code matches 4161 run return run function neofunction:system/adv/tick/quest/40/d1/choice_bury
execute if score @s code matches 4162 run return run function neofunction:system/adv/tick/quest/40/d1/choice_take
