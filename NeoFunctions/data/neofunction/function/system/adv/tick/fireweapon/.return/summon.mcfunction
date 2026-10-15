# 命名：summon
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/fireweapon/selfreload/mainhand
# >/function neofunction:system/adv/tick/fireweapon/selfreload/offhand
# =/function neofunction:system/adv/tick/fireweapon/.return/summon
$summon item ~ ~ ~ {Item:{id:"$(id)",count:$(ammo)}}
