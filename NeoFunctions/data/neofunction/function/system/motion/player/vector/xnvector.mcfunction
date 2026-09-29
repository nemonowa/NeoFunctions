# 命名：playerモーション操作
# 説明：@s player を-x方向へ0.1d分動かす
# 説明：定番の爆風を利用
# >
# =/function neofunction:system/motion/player/vector/xnvector

$execute anchored eyes rotated 90 0 positioned ^ ^ ^-0.01 run summon minecraft:creeper ~ ~1000 ~$(CalcX) {Silent:1b,Fuse:0,ExplosionRadius:-1b}
$execute anchored eyes rotated 90 0 positioned ^ ^ ^-0.01 run summon minecraft:creeper ~ ~1000 ~-$(CalcX) {Silent:1b,Fuse:0,ExplosionRadius:-1b}