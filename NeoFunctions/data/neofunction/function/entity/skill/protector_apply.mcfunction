# 命名：protector_apply
# 説明：10m以内のモブのダメージを引き受ける
# 説明：敵リスト：アイアンガエル(id:689)
# >/function neofunction:entity/skill/protector
# =/function neofunction:entity/skill/protector_apply


attribute @s max_absorption modifier add neofunction:00000000-0000-0000-0001-000000000001 2000 add_value
data modify entity @s AbsorptionAmount set value 2000f