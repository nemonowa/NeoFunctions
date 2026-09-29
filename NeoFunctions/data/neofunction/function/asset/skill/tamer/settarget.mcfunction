# 命名：settarget
# 説明：
# >/function neofunction:system/adv/fishing_rod_hooked/.all 実行者as @s(advancement:neofunction:fishing_rod_hooked/.all) if entity @s[advancements={neoadvancement:neoskill/230=true}] 実行位置@s(@s(advancement:neofunction:fishing_rod_hooked/.all)時点)
# =/function neofunction:asset/skill/tamer/settarget


tag @s add OwnerUUID
execute as @e[tag=familiar] at @e[tag=hooked,sort=nearest,limit=1] run function neofunction:asset/skill/tamer/settargetmacro with entity @a[tag=OwnerUUID,limit=1]
tag @s remove OwnerUUID
