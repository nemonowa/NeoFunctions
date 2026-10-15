# 命名：443_retry
# 説明：戦いの途中なのにヴォイド・ゼロがいない（取りこぼし）：やり直しの印を付けて、すぐ戦いを始め直す
# 実行条件：実行者 ミラ（村人 902）。#temp main_story 444〜445
# >/function neofunction:system/adv/player_interacted_with_entity/villager/902
# =/function neofunction:system/adv/tick/quest/40/fin/443_retry

# 内容
data modify storage neofunction:rubra fin.retry set value 1b
scoreboard players set #temp main_story 443
function neofunction:entity/skill/boss/rubra_void/start
