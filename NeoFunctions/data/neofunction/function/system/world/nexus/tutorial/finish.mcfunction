# 命名：finish
# 説明：転移要請オーバーライド
# >/function neofunction:asset/skill/4
# =/function neofunction:system/world/nexus/tutorial/finish

fill ~ ~ ~ ~-11 ~-11 ~-14 redstone_block replace blue_wool
advancement revoke @s only neoadvancement:nexus/root/1/9
advancement grant @s only neoadvancement:nexus/root/1/9
execute in neodimension:nexus run tp @s 1279.96 128.00 1191.38 -180 0
function neofunction:asset/event/tutorial/go/get_unique_storage
function neofunction:system/world/nexus/tutorial/finish_macro with storage neofunction:tutorial data
tag @s remove Tutorial