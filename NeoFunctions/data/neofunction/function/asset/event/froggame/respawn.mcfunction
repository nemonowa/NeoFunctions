# 命名：respawn
# 説明：（説明未記載）
# >/function neofunction:player/survival/respawn
# =/function neofunction:asset/event/froggame/respawn

tag @s remove froggame
execute in neodimension:ceresta_festa run tp @s 991.85 43.00 2155.86 -89.39 4.06
function neofunction:system/music/harvestdance/change_to_this
execute unless entity @a[tag=froggame] run function neofunction:asset/event/froggame/end