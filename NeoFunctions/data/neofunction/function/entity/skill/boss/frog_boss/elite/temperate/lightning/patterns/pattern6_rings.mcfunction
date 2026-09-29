# 命名：pattern6_rings
# 説明：⑥同心円（リング）- 中心から2重の円状に落雷（各円12点、30度刻み）
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern6_rings

# 内側リング 半径10
summon marker ~10 ~ ~0 {Tags:["AttackPoint"],data:{Timer:64}}
summon marker ~8.7 ~ ~5 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~5 ~ ~8.7 {Tags:["AttackPoint"],data:{Timer:65}}
summon marker ~0 ~ ~10 {Tags:["AttackPoint"],data:{Timer:61}}
summon marker ~-5 ~ ~8.7 {Tags:["AttackPoint"],data:{Timer:64}}
summon marker ~-8.7 ~ ~5 {Tags:["AttackPoint"],data:{Timer:60}}
summon marker ~-10 ~ ~0 {Tags:["AttackPoint"],data:{Timer:64}}
summon marker ~-8.7 ~ ~-5 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~-5 ~ ~-8.7 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~0 ~ ~-10 {Tags:["AttackPoint"],data:{Timer:66}}
summon marker ~5 ~ ~-8.7 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~8.7 ~ ~-5 {Tags:["AttackPoint"],data:{Timer:65}}

# 外側リング 半径20
summon marker ~20 ~ ~0 {Tags:["AttackPoint"],data:{Timer:60}}
summon marker ~17.4 ~ ~10 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~10 ~ ~17.4 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~0 ~ ~20 {Tags:["AttackPoint"],data:{Timer:62}}
summon marker ~-10 ~ ~17.4 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~-17.4 ~ ~10 {Tags:["AttackPoint"],data:{Timer:66}}
summon marker ~-20 ~ ~0 {Tags:["AttackPoint"],data:{Timer:62}}
summon marker ~-17.4 ~ ~-10 {Tags:["AttackPoint"],data:{Timer:65}}
summon marker ~-10 ~ ~-17.4 {Tags:["AttackPoint"],data:{Timer:64}}
summon marker ~0 ~ ~-20 {Tags:["AttackPoint"],data:{Timer:66}}
summon marker ~10 ~ ~-17.4 {Tags:["AttackPoint"],data:{Timer:64}}
summon marker ~17.4 ~ ~-10 {Tags:["AttackPoint"],data:{Timer:61}}

# エリート強化（連撃）：連撃2発目（+8tick）
summon marker ~10 ~ ~0 {Tags:["AttackPoint"],data:{Timer:72}}
summon marker ~8.7 ~ ~5 {Tags:["AttackPoint"],data:{Timer:72}}
summon marker ~5 ~ ~8.7 {Tags:["AttackPoint"],data:{Timer:73}}
summon marker ~0 ~ ~10 {Tags:["AttackPoint"],data:{Timer:73}}
summon marker ~-5 ~ ~8.7 {Tags:["AttackPoint"],data:{Timer:67}}
summon marker ~-8.7 ~ ~5 {Tags:["AttackPoint"],data:{Timer:69}}
summon marker ~-10 ~ ~0 {Tags:["AttackPoint"],data:{Timer:74}}
summon marker ~-8.7 ~ ~-5 {Tags:["AttackPoint"],data:{Timer:70}}
summon marker ~-5 ~ ~-8.7 {Tags:["AttackPoint"],data:{Timer:68}}
summon marker ~0 ~ ~-10 {Tags:["AttackPoint"],data:{Timer:73}}
summon marker ~5 ~ ~-8.7 {Tags:["AttackPoint"],data:{Timer:74}}
summon marker ~8.7 ~ ~-5 {Tags:["AttackPoint"],data:{Timer:71}}
summon marker ~20 ~ ~0 {Tags:["AttackPoint"],data:{Timer:73}}
summon marker ~17.4 ~ ~10 {Tags:["AttackPoint"],data:{Timer:72}}
summon marker ~10 ~ ~17.4 {Tags:["AttackPoint"],data:{Timer:69}}
summon marker ~0 ~ ~20 {Tags:["AttackPoint"],data:{Timer:69}}
summon marker ~-10 ~ ~17.4 {Tags:["AttackPoint"],data:{Timer:67}}
summon marker ~-17.4 ~ ~10 {Tags:["AttackPoint"],data:{Timer:68}}
summon marker ~-20 ~ ~0 {Tags:["AttackPoint"],data:{Timer:67}}
summon marker ~-17.4 ~ ~-10 {Tags:["AttackPoint"],data:{Timer:71}}
summon marker ~-10 ~ ~-17.4 {Tags:["AttackPoint"],data:{Timer:69}}
summon marker ~0 ~ ~-20 {Tags:["AttackPoint"],data:{Timer:72}}
summon marker ~10 ~ ~-17.4 {Tags:["AttackPoint"],data:{Timer:69}}
summon marker ~17.4 ~ ~-10 {Tags:["AttackPoint"],data:{Timer:73}}

# エリート強化（連撃）：連撃3発目（+16tick）
summon marker ~10 ~ ~0 {Tags:["AttackPoint"],data:{Timer:82}}
summon marker ~8.7 ~ ~5 {Tags:["AttackPoint"],data:{Timer:75}}
summon marker ~5 ~ ~8.7 {Tags:["AttackPoint"],data:{Timer:78}}
summon marker ~0 ~ ~10 {Tags:["AttackPoint"],data:{Timer:78}}
summon marker ~-5 ~ ~8.7 {Tags:["AttackPoint"],data:{Timer:82}}
summon marker ~-8.7 ~ ~5 {Tags:["AttackPoint"],data:{Timer:78}}
summon marker ~-10 ~ ~0 {Tags:["AttackPoint"],data:{Timer:80}}
summon marker ~-8.7 ~ ~-5 {Tags:["AttackPoint"],data:{Timer:80}}
summon marker ~-5 ~ ~-8.7 {Tags:["AttackPoint"],data:{Timer:79}}
summon marker ~0 ~ ~-10 {Tags:["AttackPoint"],data:{Timer:75}}
summon marker ~5 ~ ~-8.7 {Tags:["AttackPoint"],data:{Timer:81}}
summon marker ~8.7 ~ ~-5 {Tags:["AttackPoint"],data:{Timer:81}}
summon marker ~20 ~ ~0 {Tags:["AttackPoint"],data:{Timer:78}}
summon marker ~17.4 ~ ~10 {Tags:["AttackPoint"],data:{Timer:79}}
summon marker ~10 ~ ~17.4 {Tags:["AttackPoint"],data:{Timer:81}}
summon marker ~0 ~ ~20 {Tags:["AttackPoint"],data:{Timer:78}}
summon marker ~-10 ~ ~17.4 {Tags:["AttackPoint"],data:{Timer:75}}
summon marker ~-17.4 ~ ~10 {Tags:["AttackPoint"],data:{Timer:82}}
summon marker ~-20 ~ ~0 {Tags:["AttackPoint"],data:{Timer:75}}
summon marker ~-17.4 ~ ~-10 {Tags:["AttackPoint"],data:{Timer:75}}
summon marker ~-10 ~ ~-17.4 {Tags:["AttackPoint"],data:{Timer:79}}
summon marker ~0 ~ ~-20 {Tags:["AttackPoint"],data:{Timer:80}}
summon marker ~10 ~ ~-17.4 {Tags:["AttackPoint"],data:{Timer:81}}
summon marker ~17.4 ~ ~-10 {Tags:["AttackPoint"],data:{Timer:80}}

# エリート強化（連撃）：連撃4発目（+24tick）
summon marker ~10 ~ ~0 {Tags:["AttackPoint"],data:{Timer:86}}
summon marker ~8.7 ~ ~5 {Tags:["AttackPoint"],data:{Timer:85}}
summon marker ~5 ~ ~8.7 {Tags:["AttackPoint"],data:{Timer:85}}
summon marker ~0 ~ ~10 {Tags:["AttackPoint"],data:{Timer:89}}
summon marker ~-5 ~ ~8.7 {Tags:["AttackPoint"],data:{Timer:85}}
summon marker ~-8.7 ~ ~5 {Tags:["AttackPoint"],data:{Timer:86}}
summon marker ~-10 ~ ~0 {Tags:["AttackPoint"],data:{Timer:85}}
summon marker ~-8.7 ~ ~-5 {Tags:["AttackPoint"],data:{Timer:89}}
summon marker ~-5 ~ ~-8.7 {Tags:["AttackPoint"],data:{Timer:89}}
summon marker ~0 ~ ~-10 {Tags:["AttackPoint"],data:{Timer:85}}
summon marker ~5 ~ ~-8.7 {Tags:["AttackPoint"],data:{Timer:86}}
summon marker ~8.7 ~ ~-5 {Tags:["AttackPoint"],data:{Timer:85}}
summon marker ~20 ~ ~0 {Tags:["AttackPoint"],data:{Timer:90}}
summon marker ~17.4 ~ ~10 {Tags:["AttackPoint"],data:{Timer:88}}
summon marker ~10 ~ ~17.4 {Tags:["AttackPoint"],data:{Timer:83}}
summon marker ~0 ~ ~20 {Tags:["AttackPoint"],data:{Timer:88}}
summon marker ~-10 ~ ~17.4 {Tags:["AttackPoint"],data:{Timer:85}}
summon marker ~-17.4 ~ ~10 {Tags:["AttackPoint"],data:{Timer:88}}
summon marker ~-20 ~ ~0 {Tags:["AttackPoint"],data:{Timer:84}}
summon marker ~-17.4 ~ ~-10 {Tags:["AttackPoint"],data:{Timer:90}}
summon marker ~-10 ~ ~-17.4 {Tags:["AttackPoint"],data:{Timer:86}}
summon marker ~0 ~ ~-20 {Tags:["AttackPoint"],data:{Timer:90}}
summon marker ~10 ~ ~-17.4 {Tags:["AttackPoint"],data:{Timer:88}}
summon marker ~17.4 ~ ~-10 {Tags:["AttackPoint"],data:{Timer:90}}

