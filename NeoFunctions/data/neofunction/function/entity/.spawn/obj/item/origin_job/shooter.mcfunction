# 命名：shooter
# 説明：（説明未記載）
# >/function neofunction:entity/.spawn/obj/item/.neo
# =/function neofunction:entity/.spawn/obj/item/origin_job/shooter

execute on origin if entity @s[advancements={neoadvancement:neoskill/220=true}] run return 1
return fail