# 命名：.neo
# 説明：（説明未記載）
# >/function neofunction:entity/.spawn/obj/area_effect_cloud/.neo
# =/function neofunction:player/job/doctor/potion/.neo

execute on origin unless entity @s[advancements={neoadvancement:neoskill/240=true}] run return 0

execute on origin run function neofunction:player/job/doctor/potion/player
kill @s