# 命名：critical
# 説明：臨界。体の中の星が脈打ち、まわりに火花と光が渦巻く
# 実行条件：爆心として、その位置で
# >/function neofunction:asset/enchantment/choushinsei/tick
# =/function neofunction:asset/enchantment/choushinsei/critical


# 内容
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.25 20 force
particle minecraft:electric_spark ~ ~1 ~ 1.5 1.5 1.5 0.3 20 force
particle minecraft:portal ~ ~1 ~ 0 0 0 12 60 force
particle minecraft:dust_color_transition{from_color:[1.0,0.4,0.9],to_color:[0.4,0.6,1.0],scale:1.5} ~ ~1 ~ 2 2 2 0 15 force
