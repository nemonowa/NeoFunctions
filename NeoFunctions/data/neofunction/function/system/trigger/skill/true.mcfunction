# 命名：true
# 説明：ワールドセッティング
# 説明：say true
# 説明：進捗スキルをすでに覚えている、忘却を提案
# >/function neofunction:system/pos/.macro with storage neofunction:pos/last_death_location
# =/function neofunction:system/trigger/skill/true



# 内容
# 習得している場合、忘却を提案
$advancement revoke @s only neoadvancement:neoskill/$(skill)
# scoreboard players remove @s LVL 1
title @s title {"text":"レベルキャパシティに空きができた！","color":"gold"}

#トグル用
tag @s add temp