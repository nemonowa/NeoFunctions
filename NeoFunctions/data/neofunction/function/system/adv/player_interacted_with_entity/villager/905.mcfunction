# 命名：905
# 説明：【追加：2026-10-09 ルブラ編】カシム（隊商の長）に話しかけたとき。421（選択 A のあと）で夜の湖のほとりの話。それ以外はひとこと
# 実行条件：実行者・実行位置 カシム（村人、DeathLootTable neofunction:asset/summon/905）
# >/function neofunction:system/adv/player_interacted_with_entity/villager
# =/function neofunction:system/adv/player_interacted_with_entity/villager/905

# 内容
function neofunction:system/adv/tick/quest/40/d1/busy_check
execute if data storage neofunction:rubra {busy:1b} run return 0
execute if score #temp main_story matches 421 if data storage neofunction:rubra choice.council run return run function neofunction:system/adv/tick/quest/40/d2/422
tellraw @p [{"text":"<"},{"text":"カシム","color":"#E0A040","bold":true},{"text":"> 「よう、相棒。この街の水は甘いだろう？　……俺は、それがちょっと怖いんだがな」"}]
