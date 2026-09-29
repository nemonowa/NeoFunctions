# 命名：item1693
# 説明：
# >/function neofunction:entity/.spawn/obj/arrow/.neo
# =/function neofunction:entity/.spawn/obj/arrow/item1693


execute on origin rotated as @s positioned ~ ~-0.5 ~ run summon fireball ^ ^ ^1.5 {Tags:["item1693"],PortalCooldown:100}
data modify entity @e[tag=item1693,limit=1,sort=nearest] power set from entity @s Motion
tag @e[tag=item1693] remove item1693
data merge entity @s {life:1190}
