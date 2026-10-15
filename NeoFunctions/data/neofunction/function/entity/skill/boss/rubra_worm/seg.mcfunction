# 命名：seg
# 説明：i 番目の節を、動きの記録の h 番目の位置に置く
# 実行条件：引数 i（節の番号）h（記録の番号）
# >/function neofunction:entity/skill/boss/rubra_worm/body
# =/function neofunction:entity/skill/boss/rubra_worm/seg

# 内容
$data modify storage neofunction:rubra worm.p set from storage neofunction:rubra worm.hist[$(h)]
$data modify storage neofunction:rubra worm.p.i set value $(i)
function neofunction:entity/skill/boss/rubra_worm/seg_tp with storage neofunction:rubra worm.p
