# 命名：pattern13_ring_converge
# 説明：⑬円環収束 - 外周から中心へ向かって3重のリングが順番に着弾し、輪が縮んでいくように見える
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern13_ring_converge

# 外周（半径28）Timer40
summon marker ~28 ~ ~0 {Tags:["AttackPoint"],data:{Timer:44}}
summon marker ~19.8 ~ ~19.8 {Tags:["AttackPoint"],data:{Timer:40}}
summon marker ~0 ~ ~28 {Tags:["AttackPoint"],data:{Timer:44}}
summon marker ~-19.8 ~ ~19.8 {Tags:["AttackPoint"],data:{Timer:44}}
summon marker ~-28 ~ ~0 {Tags:["AttackPoint"],data:{Timer:43}}
summon marker ~-19.8 ~ ~-19.8 {Tags:["AttackPoint"],data:{Timer:40}}
summon marker ~0 ~ ~-28 {Tags:["AttackPoint"],data:{Timer:42}}
summon marker ~19.8 ~ ~-19.8 {Tags:["AttackPoint"],data:{Timer:43}}

# 中間（半径18）Timer58
summon marker ~18 ~ ~0 {Tags:["AttackPoint"],data:{Timer:62}}
summon marker ~12.73 ~ ~12.73 {Tags:["AttackPoint"],data:{Timer:61}}
summon marker ~0 ~ ~18 {Tags:["AttackPoint"],data:{Timer:58}}
summon marker ~-12.73 ~ ~12.73 {Tags:["AttackPoint"],data:{Timer:61}}
summon marker ~-18 ~ ~0 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~-12.73 ~ ~-12.73 {Tags:["AttackPoint"],data:{Timer:58}}
summon marker ~0 ~ ~-18 {Tags:["AttackPoint"],data:{Timer:60}}
summon marker ~12.73 ~ ~-12.73 {Tags:["AttackPoint"],data:{Timer:58}}

# 内周（半径9）Timer76
summon marker ~9 ~ ~0 {Tags:["AttackPoint"],data:{Timer:80}}
summon marker ~6.36 ~ ~6.36 {Tags:["AttackPoint"],data:{Timer:76}}
summon marker ~0 ~ ~9 {Tags:["AttackPoint"],data:{Timer:79}}
summon marker ~-6.36 ~ ~6.36 {Tags:["AttackPoint"],data:{Timer:78}}
summon marker ~-9 ~ ~0 {Tags:["AttackPoint"],data:{Timer:78}}
summon marker ~-6.36 ~ ~-6.36 {Tags:["AttackPoint"],data:{Timer:77}}
summon marker ~0 ~ ~-9 {Tags:["AttackPoint"],data:{Timer:78}}
summon marker ~6.36 ~ ~-6.36 {Tags:["AttackPoint"],data:{Timer:78}}

# エリート強化（連撃）：連撃2発目（+8tick）
summon marker ~28 ~ ~0 {Tags:["AttackPoint"],data:{Timer:49}}
summon marker ~19.8 ~ ~19.8 {Tags:["AttackPoint"],data:{Timer:51}}
summon marker ~0 ~ ~28 {Tags:["AttackPoint"],data:{Timer:50}}
summon marker ~-19.8 ~ ~19.8 {Tags:["AttackPoint"],data:{Timer:49}}
summon marker ~-28 ~ ~0 {Tags:["AttackPoint"],data:{Timer:49}}
summon marker ~-19.8 ~ ~-19.8 {Tags:["AttackPoint"],data:{Timer:51}}
summon marker ~0 ~ ~-28 {Tags:["AttackPoint"],data:{Timer:49}}
summon marker ~19.8 ~ ~-19.8 {Tags:["AttackPoint"],data:{Timer:48}}
summon marker ~18 ~ ~0 {Tags:["AttackPoint"],data:{Timer:70}}
summon marker ~12.73 ~ ~12.73 {Tags:["AttackPoint"],data:{Timer:68}}
summon marker ~0 ~ ~18 {Tags:["AttackPoint"],data:{Timer:68}}
summon marker ~-12.73 ~ ~12.73 {Tags:["AttackPoint"],data:{Timer:70}}
summon marker ~-18 ~ ~0 {Tags:["AttackPoint"],data:{Timer:66}}
summon marker ~-12.73 ~ ~-12.73 {Tags:["AttackPoint"],data:{Timer:70}}
summon marker ~0 ~ ~-18 {Tags:["AttackPoint"],data:{Timer:69}}
summon marker ~12.73 ~ ~-12.73 {Tags:["AttackPoint"],data:{Timer:70}}
summon marker ~9 ~ ~0 {Tags:["AttackPoint"],data:{Timer:87}}
summon marker ~6.36 ~ ~6.36 {Tags:["AttackPoint"],data:{Timer:85}}
summon marker ~0 ~ ~9 {Tags:["AttackPoint"],data:{Timer:84}}
summon marker ~-6.36 ~ ~6.36 {Tags:["AttackPoint"],data:{Timer:86}}
summon marker ~-9 ~ ~0 {Tags:["AttackPoint"],data:{Timer:86}}
summon marker ~-6.36 ~ ~-6.36 {Tags:["AttackPoint"],data:{Timer:87}}
summon marker ~0 ~ ~-9 {Tags:["AttackPoint"],data:{Timer:86}}
summon marker ~6.36 ~ ~-6.36 {Tags:["AttackPoint"],data:{Timer:86}}

# エリート強化（連撃）：連撃3発目（+16tick）
summon marker ~28 ~ ~0 {Tags:["AttackPoint"],data:{Timer:56}}
summon marker ~19.8 ~ ~19.8 {Tags:["AttackPoint"],data:{Timer:57}}
summon marker ~0 ~ ~28 {Tags:["AttackPoint"],data:{Timer:60}}
summon marker ~-19.8 ~ ~19.8 {Tags:["AttackPoint"],data:{Timer:60}}
summon marker ~-28 ~ ~0 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~-19.8 ~ ~-19.8 {Tags:["AttackPoint"],data:{Timer:60}}
summon marker ~0 ~ ~-28 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~19.8 ~ ~-19.8 {Tags:["AttackPoint"],data:{Timer:56}}
summon marker ~18 ~ ~0 {Tags:["AttackPoint"],data:{Timer:76}}
summon marker ~12.73 ~ ~12.73 {Tags:["AttackPoint"],data:{Timer:74}}
summon marker ~0 ~ ~18 {Tags:["AttackPoint"],data:{Timer:76}}
summon marker ~-12.73 ~ ~12.73 {Tags:["AttackPoint"],data:{Timer:76}}
summon marker ~-18 ~ ~0 {Tags:["AttackPoint"],data:{Timer:75}}
summon marker ~-12.73 ~ ~-12.73 {Tags:["AttackPoint"],data:{Timer:75}}
summon marker ~0 ~ ~-18 {Tags:["AttackPoint"],data:{Timer:77}}
summon marker ~12.73 ~ ~-12.73 {Tags:["AttackPoint"],data:{Timer:74}}
summon marker ~9 ~ ~0 {Tags:["AttackPoint"],data:{Timer:93}}
summon marker ~6.36 ~ ~6.36 {Tags:["AttackPoint"],data:{Timer:94}}
summon marker ~0 ~ ~9 {Tags:["AttackPoint"],data:{Timer:94}}
summon marker ~-6.36 ~ ~6.36 {Tags:["AttackPoint"],data:{Timer:95}}
summon marker ~-9 ~ ~0 {Tags:["AttackPoint"],data:{Timer:95}}
summon marker ~-6.36 ~ ~-6.36 {Tags:["AttackPoint"],data:{Timer:94}}
summon marker ~0 ~ ~-9 {Tags:["AttackPoint"],data:{Timer:96}}
summon marker ~6.36 ~ ~-6.36 {Tags:["AttackPoint"],data:{Timer:93}}

