# 命名：shooter
# 説明：
# >/function neofunction:entity/.spawn/obj/arrow/.neo
# =/function neofunction:entity/.spawn/obj/arrow/shooter

execute on origin unless entity @s[advancements={neoadvancement:neoskill/220=true}] run return 0
tag @s add beacon
tag @s remove vanilla
execute on origin run function neofunction:system/adv/tick/entity_scores/c-stick
