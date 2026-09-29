# 命名：aria
# 説明：（説明未記載）
# >/function neofunction:entity/.spawn/obj/item/.neo
# =/function neofunction:entity/.spawn/obj/item/origin_job/aria

execute on origin if entity @s[advancements={neoadvancement:neoskill/210=true}] run return 1
return fail