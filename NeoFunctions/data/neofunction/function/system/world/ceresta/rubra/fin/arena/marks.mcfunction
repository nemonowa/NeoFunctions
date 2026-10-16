# 命名：marks
# 説明：星還りの空の目印：真ん中、入る所、ボスの浮かぶ所、星灯の柱 8 本（柱の頂のランプの真ん中、y209）
# 実行条件：セレスタ次元
# >/function neofunction:system/world/ceresta/rubra/fin/arena/build_go_2
# =/function neofunction:system/world/ceresta/rubra/fin/arena/marks

# 内容
kill @e[type=marker,tag=rubra_sky]
summon marker 921.5 200 3282.5 {Tags:["rubra_fin","rubra_sky","rubra_sky_center"]}
summon marker 921.5 200 3306.5 {Tags:["rubra_fin","rubra_sky","rubra_sky_spawn"]}
summon marker 921.5 216 3282.5 {Tags:["rubra_fin","rubra_sky","rubra_sky_boss"]}
summon marker 921.5 209.5 3236.5 {Tags:["rubra_fin","rubra_sky","rubra_pillar"]}
summon marker 954.5 209.5 3249.5 {Tags:["rubra_fin","rubra_sky","rubra_pillar"]}
summon marker 967.5 209.5 3282.5 {Tags:["rubra_fin","rubra_sky","rubra_pillar"]}
summon marker 954.5 209.5 3315.5 {Tags:["rubra_fin","rubra_sky","rubra_pillar"]}
summon marker 921.5 209.5 3328.5 {Tags:["rubra_fin","rubra_sky","rubra_pillar"]}
summon marker 888.5 209.5 3315.5 {Tags:["rubra_fin","rubra_sky","rubra_pillar"]}
summon marker 875.5 209.5 3282.5 {Tags:["rubra_fin","rubra_sky","rubra_pillar"]}
summon marker 888.5 209.5 3249.5 {Tags:["rubra_fin","rubra_sky","rubra_pillar"]}
