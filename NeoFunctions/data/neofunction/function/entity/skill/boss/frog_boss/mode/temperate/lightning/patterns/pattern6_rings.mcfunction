# 命名：pattern6_rings
# 説明：⑥同心円（リング）- 中心から2重の円状に落雷（各円12点、30度刻み）
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern6_rings

# 内側リング 半径10
summon marker ~10 ~ ~0 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~8.7 ~ ~5 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~5 ~ ~8.7 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~0 ~ ~10 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~-5 ~ ~8.7 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~-8.7 ~ ~5 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~-10 ~ ~0 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~-8.7 ~ ~-5 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~-5 ~ ~-8.7 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~0 ~ ~-10 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~5 ~ ~-8.7 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~8.7 ~ ~-5 {Tags:["AttackPoint"],data:{Timer:59}}

# 外側リング 半径20
summon marker ~20 ~ ~0 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~17.4 ~ ~10 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~10 ~ ~17.4 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~0 ~ ~20 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~-10 ~ ~17.4 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~-17.4 ~ ~10 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~-20 ~ ~0 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~-17.4 ~ ~-10 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~-10 ~ ~-17.4 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~0 ~ ~-20 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~10 ~ ~-17.4 {Tags:["AttackPoint"],data:{Timer:59}}
summon marker ~17.4 ~ ~-10 {Tags:["AttackPoint"],data:{Timer:59}}
