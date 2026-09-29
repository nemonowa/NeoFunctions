# 命名：summon
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/fireweapon/selfreload/mainhand
# >/function neofunction:system/adv/tick/fireweapon/selfreload/offhand
# =/function neofunction:system/adv/tick/fireweapon/.return/summon
# 【変更：2026-09-27 26.3対応】アイテムの個数は Count(byte) から count(int) に変わった（ammo は int で保存されている）
$summon item ~ ~ ~ {Item:{id:"$(id)",count:$(ammo)}}
