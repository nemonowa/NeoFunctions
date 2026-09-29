# 命名：pattern9_grid
# 説明：⑨格子（グリッド）- フィールド全体に縦横の格子状で落雷する
# 説明：安置：内側のX=-8/8・Z=-8/8ラインを間引き、外側3本(X/Z=-16,0,16)のみに。ライン間隔が16マスに広がり、格子の間（安置帯）に逃げ込みやすくなる
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern9_grid

# 縦ライン（X固定・Zを走査）
# X=-16
summon marker ~-16 ~ ~-20 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~-16 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~-16 ~ ~-12 {Tags:["AttackPoint"],data:{Timer:64}}
summon marker ~-16 ~ ~-8 {Tags:["AttackPoint"],data:{Timer:61}}
summon marker ~-16 ~ ~-4 {Tags:["AttackPoint"],data:{Timer:62}}
summon marker ~-16 ~ ~0 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~-16 ~ ~4 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~-16 ~ ~8 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~-16 ~ ~12 {Tags:["AttackPoint"],data:{Timer:60}}
summon marker ~-16 ~ ~16 {Tags:["AttackPoint"],data:{Timer:64}}
summon marker ~-16 ~ ~20 {Tags:["AttackPoint"],data:{Timer:66}}

# X=0
summon marker ~0 ~ ~-20 {Tags:["AttackPoint"],data:{Timer:64}}
summon marker ~0 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:66}}
summon marker ~0 ~ ~-12 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~0 ~ ~-8 {Tags:["AttackPoint"],data:{Timer:60}}
summon marker ~0 ~ ~-4 {Tags:["AttackPoint"],data:{Timer:61}}
summon marker ~0 ~ ~0 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~0 ~ ~4 {Tags:["AttackPoint"],data:{Timer:64}}
summon marker ~0 ~ ~8 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~0 ~ ~12 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~0 ~ ~16 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~0 ~ ~20 {Tags:["AttackPoint"],data:{Timer:63}}

# X=16
summon marker ~16 ~ ~-20 {Tags:["AttackPoint"],data:{Timer:64}}
summon marker ~16 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~16 ~ ~-12 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~16 ~ ~-8 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~16 ~ ~-4 {Tags:["AttackPoint"],data:{Timer:62}}
summon marker ~16 ~ ~0 {Tags:["AttackPoint"],data:{Timer:65}}
summon marker ~16 ~ ~4 {Tags:["AttackPoint"],data:{Timer:65}}
summon marker ~16 ~ ~8 {Tags:["AttackPoint"],data:{Timer:62}}
summon marker ~16 ~ ~12 {Tags:["AttackPoint"],data:{Timer:66}}
summon marker ~16 ~ ~16 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~16 ~ ~20 {Tags:["AttackPoint"],data:{Timer:62}}

# 横ライン（Z固定・Xを走査）
# Z=-16
summon marker ~-20 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:60}}
summon marker ~-16 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:62}}
summon marker ~-12 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:65}}
summon marker ~-8 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~-4 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:62}}
summon marker ~0 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~4 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:61}}
summon marker ~8 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:65}}
summon marker ~12 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:62}}
summon marker ~16 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~20 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:66}}

# Z=0
summon marker ~-20 ~ ~0 {Tags:["AttackPoint"],data:{Timer:61}}
summon marker ~-16 ~ ~0 {Tags:["AttackPoint"],data:{Timer:64}}
summon marker ~-12 ~ ~0 {Tags:["AttackPoint"],data:{Timer:60}}
summon marker ~-8 ~ ~0 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~-4 ~ ~0 {Tags:["AttackPoint"],data:{Timer:64}}
summon marker ~0 ~ ~0 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~4 ~ ~0 {Tags:["AttackPoint"],data:{Timer:65}}
summon marker ~8 ~ ~0 {Tags:["AttackPoint"],data:{Timer:62}}
summon marker ~12 ~ ~0 {Tags:["AttackPoint"],data:{Timer:60}}
summon marker ~16 ~ ~0 {Tags:["AttackPoint"],data:{Timer:61}}
summon marker ~20 ~ ~0 {Tags:["AttackPoint"],data:{Timer:65}}

# Z=16
summon marker ~-20 ~ ~16 {Tags:["AttackPoint"],data:{Timer:63}}
summon marker ~-16 ~ ~16 {Tags:["AttackPoint"],data:{Timer:66}}
summon marker ~-12 ~ ~16 {Tags:["AttackPoint"],data:{Timer:61}}
summon marker ~-8 ~ ~16 {Tags:["AttackPoint"],data:{Timer:61}}
summon marker ~-4 ~ ~16 {Tags:["AttackPoint"],data:{Timer:66}}
summon marker ~0 ~ ~16 {Tags:["AttackPoint"],data:{Timer:65}}
summon marker ~4 ~ ~16 {Tags:["AttackPoint"],data:{Timer:60}}
summon marker ~8 ~ ~16 {Tags:["AttackPoint"],data:{Timer:62}}
summon marker ~12 ~ ~16 {Tags:["AttackPoint"],data:{Timer:60}}
summon marker ~16 ~ ~16 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~20 ~ ~16 {Tags:["AttackPoint"],data:{Timer:61}}

# エリート強化（連撃）：連撃2発目（+10tick）
# 命名：pattern9_grid
# 説明：⑨格子（グリッド）- フィールド全体に縦横の格子状で落雷する
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern9_grid

# 縦ライン（X固定・Zを走査）
# X=-16
summon marker ~-16 ~ ~-20 {Tags:["AttackPoint"],data:{Timer:73}}
summon marker ~-16 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:69}}
summon marker ~-16 ~ ~-12 {Tags:["AttackPoint"],data:{Timer:72}}
summon marker ~-16 ~ ~-8 {Tags:["AttackPoint"],data:{Timer:70}}
summon marker ~-16 ~ ~-4 {Tags:["AttackPoint"],data:{Timer:70}}
summon marker ~-16 ~ ~0 {Tags:["AttackPoint"],data:{Timer:72}}
summon marker ~-16 ~ ~4 {Tags:["AttackPoint"],data:{Timer:72}}
summon marker ~-16 ~ ~8 {Tags:["AttackPoint"],data:{Timer:76}}
summon marker ~-16 ~ ~12 {Tags:["AttackPoint"],data:{Timer:76}}
summon marker ~-16 ~ ~16 {Tags:["AttackPoint"],data:{Timer:73}}
summon marker ~-16 ~ ~20 {Tags:["AttackPoint"],data:{Timer:73}}

# X=0
summon marker ~0 ~ ~-20 {Tags:["AttackPoint"],data:{Timer:73}}
summon marker ~0 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:72}}
summon marker ~0 ~ ~-12 {Tags:["AttackPoint"],data:{Timer:74}}
summon marker ~0 ~ ~-8 {Tags:["AttackPoint"],data:{Timer:73}}
summon marker ~0 ~ ~-4 {Tags:["AttackPoint"],data:{Timer:76}}
summon marker ~0 ~ ~0 {Tags:["AttackPoint"],data:{Timer:73}}
summon marker ~0 ~ ~4 {Tags:["AttackPoint"],data:{Timer:70}}
summon marker ~0 ~ ~8 {Tags:["AttackPoint"],data:{Timer:72}}
summon marker ~0 ~ ~12 {Tags:["AttackPoint"],data:{Timer:75}}
summon marker ~0 ~ ~16 {Tags:["AttackPoint"],data:{Timer:69}}
summon marker ~0 ~ ~20 {Tags:["AttackPoint"],data:{Timer:73}}

# X=16
summon marker ~16 ~ ~-20 {Tags:["AttackPoint"],data:{Timer:73}}
summon marker ~16 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:69}}
summon marker ~16 ~ ~-12 {Tags:["AttackPoint"],data:{Timer:70}}
summon marker ~16 ~ ~-8 {Tags:["AttackPoint"],data:{Timer:72}}
summon marker ~16 ~ ~-4 {Tags:["AttackPoint"],data:{Timer:72}}
summon marker ~16 ~ ~0 {Tags:["AttackPoint"],data:{Timer:75}}
summon marker ~16 ~ ~4 {Tags:["AttackPoint"],data:{Timer:74}}
summon marker ~16 ~ ~8 {Tags:["AttackPoint"],data:{Timer:76}}
summon marker ~16 ~ ~12 {Tags:["AttackPoint"],data:{Timer:72}}
summon marker ~16 ~ ~16 {Tags:["AttackPoint"],data:{Timer:74}}
summon marker ~16 ~ ~20 {Tags:["AttackPoint"],data:{Timer:75}}

# 横ライン（Z固定・Xを走査）
# Z=-16
summon marker ~-20 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:75}}
summon marker ~-16 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:76}}
summon marker ~-12 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:71}}
summon marker ~-8 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:75}}
summon marker ~-4 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:70}}
summon marker ~0 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:70}}
summon marker ~4 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:73}}
summon marker ~8 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:76}}
summon marker ~12 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:74}}
summon marker ~16 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:75}}
summon marker ~20 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:73}}

# Z=0
summon marker ~-20 ~ ~0 {Tags:["AttackPoint"],data:{Timer:73}}
summon marker ~-16 ~ ~0 {Tags:["AttackPoint"],data:{Timer:74}}
summon marker ~-12 ~ ~0 {Tags:["AttackPoint"],data:{Timer:72}}
summon marker ~-8 ~ ~0 {Tags:["AttackPoint"],data:{Timer:69}}
summon marker ~-4 ~ ~0 {Tags:["AttackPoint"],data:{Timer:70}}
summon marker ~0 ~ ~0 {Tags:["AttackPoint"],data:{Timer:69}}
summon marker ~4 ~ ~0 {Tags:["AttackPoint"],data:{Timer:72}}
summon marker ~8 ~ ~0 {Tags:["AttackPoint"],data:{Timer:70}}
summon marker ~12 ~ ~0 {Tags:["AttackPoint"],data:{Timer:73}}
summon marker ~16 ~ ~0 {Tags:["AttackPoint"],data:{Timer:75}}
summon marker ~20 ~ ~0 {Tags:["AttackPoint"],data:{Timer:75}}

# Z=16
summon marker ~-20 ~ ~16 {Tags:["AttackPoint"],data:{Timer:74}}
summon marker ~-16 ~ ~16 {Tags:["AttackPoint"],data:{Timer:71}}
summon marker ~-12 ~ ~16 {Tags:["AttackPoint"],data:{Timer:75}}
summon marker ~-8 ~ ~16 {Tags:["AttackPoint"],data:{Timer:73}}
summon marker ~-4 ~ ~16 {Tags:["AttackPoint"],data:{Timer:76}}
summon marker ~0 ~ ~16 {Tags:["AttackPoint"],data:{Timer:70}}
summon marker ~4 ~ ~16 {Tags:["AttackPoint"],data:{Timer:71}}
summon marker ~8 ~ ~16 {Tags:["AttackPoint"],data:{Timer:75}}
summon marker ~12 ~ ~16 {Tags:["AttackPoint"],data:{Timer:73}}
summon marker ~16 ~ ~16 {Tags:["AttackPoint"],data:{Timer:71}}
summon marker ~20 ~ ~16 {Tags:["AttackPoint"],data:{Timer:70}}


# エリート強化（連撃）：連撃3発目（+20tick）
# 命名：pattern9_grid
# 説明：⑨格子（グリッド）- フィールド全体に縦横の格子状で落雷する
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern9_grid

# 縦ライン（X固定・Zを走査）
# X=-16
summon marker ~-16 ~ ~-20 {Tags:["AttackPoint"],data:{Timer:81}}
summon marker ~-16 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:84}}
summon marker ~-16 ~ ~-12 {Tags:["AttackPoint"],data:{Timer:80}}
summon marker ~-16 ~ ~-8 {Tags:["AttackPoint"],data:{Timer:86}}
summon marker ~-16 ~ ~-4 {Tags:["AttackPoint"],data:{Timer:81}}
summon marker ~-16 ~ ~0 {Tags:["AttackPoint"],data:{Timer:84}}
summon marker ~-16 ~ ~4 {Tags:["AttackPoint"],data:{Timer:84}}
summon marker ~-16 ~ ~8 {Tags:["AttackPoint"],data:{Timer:80}}
summon marker ~-16 ~ ~12 {Tags:["AttackPoint"],data:{Timer:80}}
summon marker ~-16 ~ ~16 {Tags:["AttackPoint"],data:{Timer:82}}
summon marker ~-16 ~ ~20 {Tags:["AttackPoint"],data:{Timer:82}}

# X=0
summon marker ~0 ~ ~-20 {Tags:["AttackPoint"],data:{Timer:80}}
summon marker ~0 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:84}}
summon marker ~0 ~ ~-12 {Tags:["AttackPoint"],data:{Timer:82}}
summon marker ~0 ~ ~-8 {Tags:["AttackPoint"],data:{Timer:86}}
summon marker ~0 ~ ~-4 {Tags:["AttackPoint"],data:{Timer:80}}
summon marker ~0 ~ ~0 {Tags:["AttackPoint"],data:{Timer:86}}
summon marker ~0 ~ ~4 {Tags:["AttackPoint"],data:{Timer:86}}
summon marker ~0 ~ ~8 {Tags:["AttackPoint"],data:{Timer:82}}
summon marker ~0 ~ ~12 {Tags:["AttackPoint"],data:{Timer:86}}
summon marker ~0 ~ ~16 {Tags:["AttackPoint"],data:{Timer:81}}
summon marker ~0 ~ ~20 {Tags:["AttackPoint"],data:{Timer:81}}

# X=16
summon marker ~16 ~ ~-20 {Tags:["AttackPoint"],data:{Timer:79}}
summon marker ~16 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:86}}
summon marker ~16 ~ ~-12 {Tags:["AttackPoint"],data:{Timer:79}}
summon marker ~16 ~ ~-8 {Tags:["AttackPoint"],data:{Timer:84}}
summon marker ~16 ~ ~-4 {Tags:["AttackPoint"],data:{Timer:82}}
summon marker ~16 ~ ~0 {Tags:["AttackPoint"],data:{Timer:86}}
summon marker ~16 ~ ~4 {Tags:["AttackPoint"],data:{Timer:80}}
summon marker ~16 ~ ~8 {Tags:["AttackPoint"],data:{Timer:81}}
summon marker ~16 ~ ~12 {Tags:["AttackPoint"],data:{Timer:81}}
summon marker ~16 ~ ~16 {Tags:["AttackPoint"],data:{Timer:81}}
summon marker ~16 ~ ~20 {Tags:["AttackPoint"],data:{Timer:79}}

# 横ライン（Z固定・Xを走査）
# Z=-16
summon marker ~-20 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:85}}
summon marker ~-16 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:83}}
summon marker ~-12 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:85}}
summon marker ~-8 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:80}}
summon marker ~-4 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:81}}
summon marker ~0 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:83}}
summon marker ~4 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:82}}
summon marker ~8 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:84}}
summon marker ~12 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:84}}
summon marker ~16 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:86}}
summon marker ~20 ~ ~-16 {Tags:["AttackPoint"],data:{Timer:84}}

# Z=0
summon marker ~-20 ~ ~0 {Tags:["AttackPoint"],data:{Timer:83}}
summon marker ~-16 ~ ~0 {Tags:["AttackPoint"],data:{Timer:82}}
summon marker ~-12 ~ ~0 {Tags:["AttackPoint"],data:{Timer:84}}
summon marker ~-8 ~ ~0 {Tags:["AttackPoint"],data:{Timer:83}}
summon marker ~-4 ~ ~0 {Tags:["AttackPoint"],data:{Timer:85}}
summon marker ~0 ~ ~0 {Tags:["AttackPoint"],data:{Timer:82}}
summon marker ~4 ~ ~0 {Tags:["AttackPoint"],data:{Timer:82}}
summon marker ~8 ~ ~0 {Tags:["AttackPoint"],data:{Timer:82}}
summon marker ~12 ~ ~0 {Tags:["AttackPoint"],data:{Timer:81}}
summon marker ~16 ~ ~0 {Tags:["AttackPoint"],data:{Timer:79}}
summon marker ~20 ~ ~0 {Tags:["AttackPoint"],data:{Timer:86}}

# Z=16
summon marker ~-20 ~ ~16 {Tags:["AttackPoint"],data:{Timer:79}}
summon marker ~-16 ~ ~16 {Tags:["AttackPoint"],data:{Timer:81}}
summon marker ~-12 ~ ~16 {Tags:["AttackPoint"],data:{Timer:81}}
summon marker ~-8 ~ ~16 {Tags:["AttackPoint"],data:{Timer:79}}
summon marker ~-4 ~ ~16 {Tags:["AttackPoint"],data:{Timer:86}}
summon marker ~0 ~ ~16 {Tags:["AttackPoint"],data:{Timer:84}}
summon marker ~4 ~ ~16 {Tags:["AttackPoint"],data:{Timer:81}}
summon marker ~8 ~ ~16 {Tags:["AttackPoint"],data:{Timer:80}}
summon marker ~12 ~ ~16 {Tags:["AttackPoint"],data:{Timer:82}}
summon marker ~16 ~ ~16 {Tags:["AttackPoint"],data:{Timer:80}}
summon marker ~20 ~ ~16 {Tags:["AttackPoint"],data:{Timer:80}}


