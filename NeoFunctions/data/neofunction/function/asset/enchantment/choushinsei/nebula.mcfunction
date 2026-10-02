# 命名：nebula
# 説明：炸裂の後。超新星の残骸のように、桃色から青へ変わる星雲と、漂う光の粒を広く出す
# 実行条件：爆心として、地面の位置で
# >/function neofunction:asset/enchantment/choushinsei/tick
# =/function neofunction:asset/enchantment/choushinsei/nebula


# 内容
particle minecraft:dust_color_transition{from_color:[1.0,0.35,0.85],to_color:[0.3,0.45,1.0],scale:3.0} ~ ~8 ~ 25 8 25 0 80 force
particle minecraft:end_rod ~ ~8 ~ 25 10 25 0.02 30 force
particle minecraft:white_ash ~ ~15 ~ 40 15 40 0 150 force
