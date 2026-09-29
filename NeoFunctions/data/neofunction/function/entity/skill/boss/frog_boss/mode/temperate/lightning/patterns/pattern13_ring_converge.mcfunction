# 命名：pattern13_ring_converge
# 説明：⑬円環収束 - 外周から中心へ向かって3重のリングが順番に着弾し、輪が縮んでいくように見える
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern13_ring_converge

# 外周（半径28）Timer40
summon marker ~28 ~ ~0 {Tags:["AttackPoint"],data:{Timer:40}}
summon marker ~19.8 ~ ~19.8 {Tags:["AttackPoint"],data:{Timer:40}}
summon marker ~0 ~ ~28 {Tags:["AttackPoint"],data:{Timer:40}}
summon marker ~-19.8 ~ ~19.8 {Tags:["AttackPoint"],data:{Timer:40}}
summon marker ~-28 ~ ~0 {Tags:["AttackPoint"],data:{Timer:40}}
summon marker ~-19.8 ~ ~-19.8 {Tags:["AttackPoint"],data:{Timer:40}}
summon marker ~0 ~ ~-28 {Tags:["AttackPoint"],data:{Timer:40}}
summon marker ~19.8 ~ ~-19.8 {Tags:["AttackPoint"],data:{Timer:40}}

# 中間（半径18）Timer58
summon marker ~18 ~ ~0 {Tags:["AttackPoint"],data:{Timer:58}}
summon marker ~12.73 ~ ~12.73 {Tags:["AttackPoint"],data:{Timer:58}}
summon marker ~0 ~ ~18 {Tags:["AttackPoint"],data:{Timer:58}}
summon marker ~-12.73 ~ ~12.73 {Tags:["AttackPoint"],data:{Timer:58}}
summon marker ~-18 ~ ~0 {Tags:["AttackPoint"],data:{Timer:58}}
summon marker ~-12.73 ~ ~-12.73 {Tags:["AttackPoint"],data:{Timer:58}}
summon marker ~0 ~ ~-18 {Tags:["AttackPoint"],data:{Timer:58}}
summon marker ~12.73 ~ ~-12.73 {Tags:["AttackPoint"],data:{Timer:58}}

# 内周（半径9）Timer76
summon marker ~9 ~ ~0 {Tags:["AttackPoint"],data:{Timer:76}}
summon marker ~6.36 ~ ~6.36 {Tags:["AttackPoint"],data:{Timer:76}}
summon marker ~0 ~ ~9 {Tags:["AttackPoint"],data:{Timer:76}}
summon marker ~-6.36 ~ ~6.36 {Tags:["AttackPoint"],data:{Timer:76}}
summon marker ~-9 ~ ~0 {Tags:["AttackPoint"],data:{Timer:76}}
summon marker ~-6.36 ~ ~-6.36 {Tags:["AttackPoint"],data:{Timer:76}}
summon marker ~0 ~ ~-9 {Tags:["AttackPoint"],data:{Timer:76}}
summon marker ~6.36 ~ ~-6.36 {Tags:["AttackPoint"],data:{Timer:76}}
