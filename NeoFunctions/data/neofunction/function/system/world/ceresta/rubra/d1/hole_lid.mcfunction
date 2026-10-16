# 命名：hole_lid
# 説明：大空洞の真ん中の穴（5×5、x810〜814・z3266〜3270、虚の海へ続く）に、床の高さ（y-41）でバリアブロックの蓋をする。戦いのあいだに落ちないように
# 実行条件：どこでも
# >/function neofunction:system/world/ceresta/rubra/d1/setup_in
# >/function neofunction:entity/skill/boss/rubra_worm/pillars_restore
# =/function neofunction:system/world/ceresta/rubra/d1/hole_lid

# 内容
execute in neodimension:ceresta_festa run fill 810 -41 3266 814 -41 3270 minecraft:barrier replace minecraft:air
