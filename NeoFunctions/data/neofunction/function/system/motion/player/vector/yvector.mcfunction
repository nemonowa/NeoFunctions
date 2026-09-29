# 命名：playerモーション操作
# 説明：@s player を+y方向へ0.1d分動かす
# 説明：定番の爆風を利用
# >
# =/function neofunction:system/motion/player/vector/yvector

$execute anchored eyes rotated 0 -90 positioned ^ ^ ^-0.01 run summon minecraft:creeper ~ ~1000 ~$(CalcY) {Silent:1b,Fuse:0,ExplosionRadius:-1b}
$execute anchored eyes rotated 0 -90 positioned ^ ^ ^-0.01 run summon minecraft:creeper ~ ~1000 ~-$(CalcY) {Silent:1b,Fuse:0,ExplosionRadius:-1b}