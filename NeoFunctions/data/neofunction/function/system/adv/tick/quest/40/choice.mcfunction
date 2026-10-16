# 命名：choice
# 説明：チャットの選択肢を押したとき（/trigger code set 4000〜4999）の振り分け。番号は「章の進み具合 3 桁＋選択肢 1 桁」
# 説明：4161 第一章 欠片を埋め戻す ／ 4162 第一章 欠片を持ち帰る
# 説明：4211 第二章 ミラにつく ／ 4212 オルドにつく ／ 4213 黙る ／ 4281 セレンを止める ／ 4282 話を聞く ／ 4283 一緒に行くと言う
# 説明：4321 第三章 広場で明かす ／ 4322 伏せる
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/trigger/code
# >/trigger code set 4161
# =/function neofunction:system/adv/tick/quest/40/choice

# 内容
execute if score @s code matches 4161 run return run function neofunction:system/adv/tick/quest/40/d1/choice_bury
execute if score @s code matches 4162 run return run function neofunction:system/adv/tick/quest/40/d1/choice_take
# 第二章：4211〜4213 選択 A（館の会議）／ 4281〜4283 選択 B（セレン）
execute if score @s code matches 4211 run return run function neofunction:system/adv/tick/quest/40/d2/choice_a {c:"mira"}
execute if score @s code matches 4212 run return run function neofunction:system/adv/tick/quest/40/d2/choice_a {c:"ordo"}
execute if score @s code matches 4213 run return run function neofunction:system/adv/tick/quest/40/d2/choice_a {c:"quiet"}
execute if score @s code matches 4281 run return run function neofunction:system/adv/tick/quest/40/d2/choice_b {c:"stop"}
execute if score @s code matches 4282 run return run function neofunction:system/adv/tick/quest/40/d2/choice_b {c:"listen"}
execute if score @s code matches 4283 run return run function neofunction:system/adv/tick/quest/40/d2/choice_b {c:"go"}
# 第三章：4321〜4322 選択 C（手記を広場で明かすか）
execute if score @s code matches 4321 run return run function neofunction:system/adv/tick/quest/40/d3/choice_c {c:"reveal"}
execute if score @s code matches 4322 run return run function neofunction:system/adv/tick/quest/40/d3/choice_c {c:"hide"}
# 終章：4461〜4462 終わりの選択（星を射る／ヴォイド・ゼロを射る）
execute if score @s code matches 4461 at @s run return run function neofunction:system/adv/tick/quest/40/fin/choice_final {c:"star"}
execute if score @s code matches 4462 at @s run return run function neofunction:system/adv/tick/quest/40/fin/choice_final {c:"void"}
# クリア後：星還りの空のセレン　4491 もう一度挑む／ 4492 エリートチャレンジ
execute if score @s code matches 4491 at @s run return run function neofunction:system/world/ceresta/rubra/fin/refight/start {e:"0b"}
execute if score @s code matches 4492 at @s run return run function neofunction:system/world/ceresta/rubra/fin/refight/start {e:"1b"}
