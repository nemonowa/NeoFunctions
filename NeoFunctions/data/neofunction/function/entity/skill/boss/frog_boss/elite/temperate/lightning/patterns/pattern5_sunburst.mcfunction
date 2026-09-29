# 命名：pattern5_sunburst
# 説明：（説明未記載）
# >
# =/function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern5_sunburst
 # 命名：pattern5_sunburst
# 説明：⑤放射状（サンバースト）- 中心から8方向へ放射状に落雷（各方向3点）
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern5_sunburst

# 距離8
summon marker ~8 ~ ~0 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~5.66 ~ ~5.66 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~0 ~ ~8 {Tags:["AttackPoint"],data:{Timer:64}}
summon marker ~-5.66 ~ ~5.66 {Tags:["AttackPoint"],data:{Timer:61}}
summon marker ~-8 ~ ~0 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~-5.66 ~ ~-5.66 {Tags:["AttackPoint"],data:{Timer:60}}
summon marker ~0 ~ ~-8 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~5.66 ~ ~-5.66 {Tags:["AttackPoint"],data:{Timer:66}}

# 距離16
summon marker ~16 ~ ~0 {Tags:["AttackPoint"],data:{Timer:64}}
summon marker ~11.31 ~ ~11.31 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~0 ~ ~16 {Tags:["AttackPoint"],data:{Timer:66}}
summon marker ~-11.31 ~ ~11.31 {Tags:["AttackPoint"],data:{Timer:62}}
summon marker ~-16 ~ ~0 {Tags:["AttackPoint"],data:{Timer:61}}
summon marker ~-11.31 ~ ~-11.31 {Tags:["AttackPoint"],data:{Timer:65}}
summon marker ~0 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~11.31 ~ ~-11.31 {Tags:["AttackPoint"],data:{Timer:66}}

# 距離24
summon marker ~24 ~ ~0 {Tags:["AttackPoint"],data:{Timer:66}}
summon marker ~16.97 ~ ~16.97 {Tags:["AttackPoint"],data:{Timer:64}}
summon marker ~0 ~ ~24 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~-16.97 ~ ~16.97 {Tags:["AttackPoint"],data:{Timer:66}}
summon marker ~-24 ~ ~0 {Tags:["AttackPoint"],data:{Timer:61}}
summon marker ~-16.97 ~ ~-16.97 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~0 ~ ~-24 {Tags:["AttackPoint"],data:{Timer:61}}
summon marker ~16.97 ~ ~-16.97 {Tags:["AttackPoint"],data:{Timer:65}}

# エリート強化（連撃）：連撃2発目（+8tick）
summon marker ~8 ~ ~0 {Tags:["AttackPoint"],data:{Timer:68}}
summon marker ~5.66 ~ ~5.66 {Tags:["AttackPoint"],data:{Timer:70}}
summon marker ~0 ~ ~8 {Tags:["AttackPoint"],data:{Timer:72}}
summon marker ~-5.66 ~ ~5.66 {Tags:["AttackPoint"],data:{Timer:68}}
summon marker ~-8 ~ ~0 {Tags:["AttackPoint"],data:{Timer:69}}
summon marker ~-5.66 ~ ~-5.66 {Tags:["AttackPoint"],data:{Timer:67}}
summon marker ~0 ~ ~-8 {Tags:["AttackPoint"],data:{Timer:73}}
summon marker ~5.66 ~ ~-5.66 {Tags:["AttackPoint"],data:{Timer:71}}
summon marker ~16 ~ ~0 {Tags:["AttackPoint"],data:{Timer:67}}
summon marker ~11.31 ~ ~11.31 {Tags:["AttackPoint"],data:{Timer:73}}
summon marker ~0 ~ ~16 {Tags:["AttackPoint"],data:{Timer:67}}
summon marker ~-11.31 ~ ~11.31 {Tags:["AttackPoint"],data:{Timer:69}}
summon marker ~-16 ~ ~0 {Tags:["AttackPoint"],data:{Timer:67}}
summon marker ~-11.31 ~ ~-11.31 {Tags:["AttackPoint"],data:{Timer:72}}
summon marker ~0 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:70}}
summon marker ~11.31 ~ ~-11.31 {Tags:["AttackPoint"],data:{Timer:69}}
summon marker ~24 ~ ~0 {Tags:["AttackPoint"],data:{Timer:67}}
summon marker ~16.97 ~ ~16.97 {Tags:["AttackPoint"],data:{Timer:72}}
summon marker ~0 ~ ~24 {Tags:["AttackPoint"],data:{Timer:69}}
summon marker ~-16.97 ~ ~16.97 {Tags:["AttackPoint"],data:{Timer:71}}
summon marker ~-24 ~ ~0 {Tags:["AttackPoint"],data:{Timer:68}}
summon marker ~-16.97 ~ ~-16.97 {Tags:["AttackPoint"],data:{Timer:70}}
summon marker ~0 ~ ~-24 {Tags:["AttackPoint"],data:{Timer:72}}
summon marker ~16.97 ~ ~-16.97 {Tags:["AttackPoint"],data:{Timer:73}}

# エリート強化（連撃）：連撃3発目（+16tick）
summon marker ~8 ~ ~0 {Tags:["AttackPoint"],data:{Timer:76}}
summon marker ~5.66 ~ ~5.66 {Tags:["AttackPoint"],data:{Timer:78}}
summon marker ~0 ~ ~8 {Tags:["AttackPoint"],data:{Timer:82}}
summon marker ~-5.66 ~ ~5.66 {Tags:["AttackPoint"],data:{Timer:78}}
summon marker ~-8 ~ ~0 {Tags:["AttackPoint"],data:{Timer:76}}
summon marker ~-5.66 ~ ~-5.66 {Tags:["AttackPoint"],data:{Timer:79}}
summon marker ~0 ~ ~-8 {Tags:["AttackPoint"],data:{Timer:82}}
summon marker ~5.66 ~ ~-5.66 {Tags:["AttackPoint"],data:{Timer:77}}
summon marker ~16 ~ ~0 {Tags:["AttackPoint"],data:{Timer:79}}
summon marker ~11.31 ~ ~11.31 {Tags:["AttackPoint"],data:{Timer:77}}
summon marker ~0 ~ ~16 {Tags:["AttackPoint"],data:{Timer:75}}
summon marker ~-11.31 ~ ~11.31 {Tags:["AttackPoint"],data:{Timer:81}}
summon marker ~-16 ~ ~0 {Tags:["AttackPoint"],data:{Timer:77}}
summon marker ~-11.31 ~ ~-11.31 {Tags:["AttackPoint"],data:{Timer:78}}
summon marker ~0 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:80}}
summon marker ~11.31 ~ ~-11.31 {Tags:["AttackPoint"],data:{Timer:82}}
summon marker ~24 ~ ~0 {Tags:["AttackPoint"],data:{Timer:79}}
summon marker ~16.97 ~ ~16.97 {Tags:["AttackPoint"],data:{Timer:80}}
summon marker ~0 ~ ~24 {Tags:["AttackPoint"],data:{Timer:77}}
summon marker ~-16.97 ~ ~16.97 {Tags:["AttackPoint"],data:{Timer:82}}
summon marker ~-24 ~ ~0 {Tags:["AttackPoint"],data:{Timer:77}}
summon marker ~-16.97 ~ ~-16.97 {Tags:["AttackPoint"],data:{Timer:82}}
summon marker ~0 ~ ~-24 {Tags:["AttackPoint"],data:{Timer:78}}
summon marker ~16.97 ~ ~-16.97 {Tags:["AttackPoint"],data:{Timer:81}}

# エリート強化（連撃）：連撃4発目（+24tick）
summon marker ~8 ~ ~0 {Tags:["AttackPoint"],data:{Timer:84}}
summon marker ~5.66 ~ ~5.66 {Tags:["AttackPoint"],data:{Timer:83}}
summon marker ~0 ~ ~8 {Tags:["AttackPoint"],data:{Timer:83}}
summon marker ~-5.66 ~ ~5.66 {Tags:["AttackPoint"],data:{Timer:87}}
summon marker ~-8 ~ ~0 {Tags:["AttackPoint"],data:{Timer:83}}
summon marker ~-5.66 ~ ~-5.66 {Tags:["AttackPoint"],data:{Timer:84}}
summon marker ~0 ~ ~-8 {Tags:["AttackPoint"],data:{Timer:87}}
summon marker ~5.66 ~ ~-5.66 {Tags:["AttackPoint"],data:{Timer:87}}
summon marker ~16 ~ ~0 {Tags:["AttackPoint"],data:{Timer:88}}
summon marker ~11.31 ~ ~11.31 {Tags:["AttackPoint"],data:{Timer:86}}
summon marker ~0 ~ ~16 {Tags:["AttackPoint"],data:{Timer:86}}
summon marker ~-11.31 ~ ~11.31 {Tags:["AttackPoint"],data:{Timer:86}}
summon marker ~-16 ~ ~0 {Tags:["AttackPoint"],data:{Timer:83}}
summon marker ~-11.31 ~ ~-11.31 {Tags:["AttackPoint"],data:{Timer:89}}
summon marker ~0 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:87}}
summon marker ~11.31 ~ ~-11.31 {Tags:["AttackPoint"],data:{Timer:90}}
summon marker ~24 ~ ~0 {Tags:["AttackPoint"],data:{Timer:85}}
summon marker ~16.97 ~ ~16.97 {Tags:["AttackPoint"],data:{Timer:85}}
summon marker ~0 ~ ~24 {Tags:["AttackPoint"],data:{Timer:88}}
summon marker ~-16.97 ~ ~16.97 {Tags:["AttackPoint"],data:{Timer:84}}
summon marker ~-24 ~ ~0 {Tags:["AttackPoint"],data:{Timer:83}}
summon marker ~-16.97 ~ ~-16.97 {Tags:["AttackPoint"],data:{Timer:90}}
summon marker ~0 ~ ~-24 {Tags:["AttackPoint"],data:{Timer:88}}
summon marker ~16.97 ~ ~-16.97 {Tags:["AttackPoint"],data:{Timer:85}}

