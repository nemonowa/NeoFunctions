# 命名：pattern14_ring_diffuse
# 説明：⑭円環拡散 - 中央への直撃後、そこから3重のリングが外側へ広がるように順番に着弾する
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern14_ring_diffuse

# 中央 Timer35
summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:35}}

# 半径10 Timer50
summon marker ~10 ~ ~0 {Tags:["AttackPoint"],data:{Timer:50}}
summon marker ~7.07 ~ ~7.07 {Tags:["AttackPoint"],data:{Timer:53}}
summon marker ~0 ~ ~10 {Tags:["AttackPoint"],data:{Timer:54}}
summon marker ~-7.07 ~ ~7.07 {Tags:["AttackPoint"],data:{Timer:50}}
summon marker ~-10 ~ ~0 {Tags:["AttackPoint"],data:{Timer:50}}
summon marker ~-7.07 ~ ~-7.07 {Tags:["AttackPoint"],data:{Timer:51}}
summon marker ~0 ~ ~-10 {Tags:["AttackPoint"],data:{Timer:53}}
summon marker ~7.07 ~ ~-7.07 {Tags:["AttackPoint"],data:{Timer:50}}

# 半径18 Timer63
summon marker ~18 ~ ~0 {Tags:["AttackPoint"],data:{Timer:67}}
summon marker ~12.73 ~ ~12.73 {Tags:["AttackPoint"],data:{Timer:66}}
summon marker ~0 ~ ~18 {Tags:["AttackPoint"],data:{Timer:65}}
summon marker ~-12.73 ~ ~12.73 {Tags:["AttackPoint"],data:{Timer:66}}
summon marker ~-18 ~ ~0 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~-12.73 ~ ~-12.73 {Tags:["AttackPoint"],data:{Timer:65}}
summon marker ~0 ~ ~-18 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~12.73 ~ ~-12.73 {Tags:["AttackPoint"],data:{Timer:66}}

# 半径26 Timer76
summon marker ~26 ~ ~0 {Tags:["AttackPoint"],data:{Timer:77}}
summon marker ~18.38 ~ ~18.38 {Tags:["AttackPoint"],data:{Timer:77}}
summon marker ~0 ~ ~26 {Tags:["AttackPoint"],data:{Timer:77}}
summon marker ~-18.38 ~ ~18.38 {Tags:["AttackPoint"],data:{Timer:77}}
summon marker ~-26 ~ ~0 {Tags:["AttackPoint"],data:{Timer:78}}
summon marker ~-18.38 ~ ~-18.38 {Tags:["AttackPoint"],data:{Timer:79}}
summon marker ~0 ~ ~-26 {Tags:["AttackPoint"],data:{Timer:78}}
summon marker ~18.38 ~ ~-18.38 {Tags:["AttackPoint"],data:{Timer:76}}

# エリート強化（連撃）：連撃2発目（+8tick）
summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:43}}
summon marker ~10 ~ ~0 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~7.07 ~ ~7.07 {Tags:["AttackPoint"],data:{Timer:61}}
summon marker ~0 ~ ~10 {Tags:["AttackPoint"],data:{Timer:61}}
summon marker ~-7.07 ~ ~7.07 {Tags:["AttackPoint"],data:{Timer:61}}
summon marker ~-10 ~ ~0 {Tags:["AttackPoint"],data:{Timer:60}}
summon marker ~-7.07 ~ ~-7.07 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~0 ~ ~-10 {Tags:["AttackPoint"],data:{Timer:58}}
summon marker ~7.07 ~ ~-7.07 {Tags:["AttackPoint"],data:{Timer:61}}
summon marker ~18 ~ ~0 {Tags:["AttackPoint"],data:{Timer:71}}
summon marker ~12.73 ~ ~12.73 {Tags:["AttackPoint"],data:{Timer:74}}
summon marker ~0 ~ ~18 {Tags:["AttackPoint"],data:{Timer:73}}
summon marker ~-12.73 ~ ~12.73 {Tags:["AttackPoint"],data:{Timer:72}}
summon marker ~-18 ~ ~0 {Tags:["AttackPoint"],data:{Timer:73}}
summon marker ~-12.73 ~ ~-12.73 {Tags:["AttackPoint"],data:{Timer:73}}
summon marker ~0 ~ ~-18 {Tags:["AttackPoint"],data:{Timer:72}}
summon marker ~12.73 ~ ~-12.73 {Tags:["AttackPoint"],data:{Timer:72}}
summon marker ~26 ~ ~0 {Tags:["AttackPoint"],data:{Timer:85}}
summon marker ~18.38 ~ ~18.38 {Tags:["AttackPoint"],data:{Timer:86}}
summon marker ~0 ~ ~26 {Tags:["AttackPoint"],data:{Timer:87}}
summon marker ~-18.38 ~ ~18.38 {Tags:["AttackPoint"],data:{Timer:84}}
summon marker ~-26 ~ ~0 {Tags:["AttackPoint"],data:{Timer:85}}
summon marker ~-18.38 ~ ~-18.38 {Tags:["AttackPoint"],data:{Timer:86}}
summon marker ~0 ~ ~-26 {Tags:["AttackPoint"],data:{Timer:87}}
summon marker ~18.38 ~ ~-18.38 {Tags:["AttackPoint"],data:{Timer:84}}

# エリート強化（連撃）：連撃3発目（+16tick）
summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:51}}
summon marker ~10 ~ ~0 {Tags:["AttackPoint"],data:{Timer:70}}
summon marker ~7.07 ~ ~7.07 {Tags:["AttackPoint"],data:{Timer:68}}
summon marker ~0 ~ ~10 {Tags:["AttackPoint"],data:{Timer:66}}
summon marker ~-7.07 ~ ~7.07 {Tags:["AttackPoint"],data:{Timer:69}}
summon marker ~-10 ~ ~0 {Tags:["AttackPoint"],data:{Timer:69}}
summon marker ~-7.07 ~ ~-7.07 {Tags:["AttackPoint"],data:{Timer:69}}
summon marker ~0 ~ ~-10 {Tags:["AttackPoint"],data:{Timer:66}}
summon marker ~7.07 ~ ~-7.07 {Tags:["AttackPoint"],data:{Timer:67}}
summon marker ~18 ~ ~0 {Tags:["AttackPoint"],data:{Timer:81}}
summon marker ~12.73 ~ ~12.73 {Tags:["AttackPoint"],data:{Timer:83}}
summon marker ~0 ~ ~18 {Tags:["AttackPoint"],data:{Timer:80}}
summon marker ~-12.73 ~ ~12.73 {Tags:["AttackPoint"],data:{Timer:83}}
summon marker ~-18 ~ ~0 {Tags:["AttackPoint"],data:{Timer:82}}
summon marker ~-12.73 ~ ~-12.73 {Tags:["AttackPoint"],data:{Timer:81}}
summon marker ~0 ~ ~-18 {Tags:["AttackPoint"],data:{Timer:82}}
summon marker ~12.73 ~ ~-12.73 {Tags:["AttackPoint"],data:{Timer:79}}
summon marker ~26 ~ ~0 {Tags:["AttackPoint"],data:{Timer:95}}
summon marker ~18.38 ~ ~18.38 {Tags:["AttackPoint"],data:{Timer:96}}
summon marker ~0 ~ ~26 {Tags:["AttackPoint"],data:{Timer:93}}
summon marker ~-18.38 ~ ~18.38 {Tags:["AttackPoint"],data:{Timer:92}}
summon marker ~-26 ~ ~0 {Tags:["AttackPoint"],data:{Timer:93}}
summon marker ~-18.38 ~ ~-18.38 {Tags:["AttackPoint"],data:{Timer:96}}
summon marker ~0 ~ ~-26 {Tags:["AttackPoint"],data:{Timer:94}}
summon marker ~18.38 ~ ~-18.38 {Tags:["AttackPoint"],data:{Timer:92}}

