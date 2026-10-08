# 命名：seg_tp
# 説明：【追加：2026-10-08 ルブラ編】i 番目の節の見た目と当たり判定を (x, y, z) へ
# 実行条件：引数 i x y z（worm.p）
# >/function neofunction:entity/skill/boss/rubra_worm/seg
# =/function neofunction:entity/skill/boss/rubra_worm/seg_tp

# 内容
$execute in neodimension:ceresta_festa run tp @e[type=block_display,tag=rubra_seg$(i)] $(x) $(y) $(z) 0 0
$execute in neodimension:ceresta_festa run tp @e[type=interaction,tag=rubra_hit$(i)] $(x) $(y) $(z)
