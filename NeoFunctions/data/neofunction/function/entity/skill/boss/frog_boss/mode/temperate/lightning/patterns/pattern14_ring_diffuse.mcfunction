# 命名：pattern14_ring_diffuse
# 説明：⑭円環拡散 - 中央への直撃後、そこから3重のリングが外側へ広がるように順番に着弾する
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern14_ring_diffuse

# 中央 Timer35
summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:35}}

# 半径10 Timer50
summon marker ~10 ~ ~0 {Tags:["AttackPoint"],data:{Timer:50}}
summon marker ~7.07 ~ ~7.07 {Tags:["AttackPoint"],data:{Timer:50}}
summon marker ~0 ~ ~10 {Tags:["AttackPoint"],data:{Timer:50}}
summon marker ~-7.07 ~ ~7.07 {Tags:["AttackPoint"],data:{Timer:50}}
summon marker ~-10 ~ ~0 {Tags:["AttackPoint"],data:{Timer:50}}
summon marker ~-7.07 ~ ~-7.07 {Tags:["AttackPoint"],data:{Timer:50}}
summon marker ~0 ~ ~-10 {Tags:["AttackPoint"],data:{Timer:50}}
summon marker ~7.07 ~ ~-7.07 {Tags:["AttackPoint"],data:{Timer:50}}

# 半径18 Timer63
summon marker ~18 ~ ~0 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~12.73 ~ ~12.73 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~0 ~ ~18 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~-12.73 ~ ~12.73 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~-18 ~ ~0 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~-12.73 ~ ~-12.73 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~0 ~ ~-18 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~12.73 ~ ~-12.73 {Tags:["AttackPoint"],data:{Timer:63}}

# 半径26 Timer76
summon marker ~26 ~ ~0 {Tags:["AttackPoint"],data:{Timer:76}}
summon marker ~18.38 ~ ~18.38 {Tags:["AttackPoint"],data:{Timer:76}}
summon marker ~0 ~ ~26 {Tags:["AttackPoint"],data:{Timer:76}}
summon marker ~-18.38 ~ ~18.38 {Tags:["AttackPoint"],data:{Timer:76}}
summon marker ~-26 ~ ~0 {Tags:["AttackPoint"],data:{Timer:76}}
summon marker ~-18.38 ~ ~-18.38 {Tags:["AttackPoint"],data:{Timer:76}}
summon marker ~0 ~ ~-26 {Tags:["AttackPoint"],data:{Timer:76}}
summon marker ~18.38 ~ ~-18.38 {Tags:["AttackPoint"],data:{Timer:76}}
