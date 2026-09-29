# 命名：pattern2_scatter
# 説明：②波状雷撃嵐 - 3〜8箇所にランダムな位置で発生。pattern2_pointの着弾遅延により中心から外側へ波紋状に広がって見える
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern2_scatter

execute store result score %LTScatterCount temp run random value 3..8

# 最低保証の3箇所
function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern2_point
function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern2_point
function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern2_point

# 抽選数が多ければ追加（4〜8箇所目）
execute if score %LTScatterCount temp matches 4.. run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern2_point
execute if score %LTScatterCount temp matches 5.. run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern2_point
execute if score %LTScatterCount temp matches 6.. run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern2_point
execute if score %LTScatterCount temp matches 7.. run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern2_point
execute if score %LTScatterCount temp matches 8 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern2_point
