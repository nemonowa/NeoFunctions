# 命名：ray
# 説明：光の筋を 0.5 ずつ伸ばす。空気でない所に当たるか、#rubra_ray temp が尽きたら止まる。色は r g b
# 実行条件：実行位置と向き 光の先。引数 r g b
# >/function neofunction:system/world/ceresta/rubra/d1/ped/beam
# >/function neofunction:system/world/ceresta/rubra/d1/ped/beam_wall
# =/function neofunction:system/world/ceresta/rubra/d1/ped/ray

# 内容
$particle minecraft:dust{color:[$(r),$(g),$(b)],scale:0.7} ~ ~ ~ 0 0 0 0 1 force @a[distance=..40]
scoreboard players remove #rubra_ray temp 1
$execute if score #rubra_ray temp matches 1.. positioned ^ ^ ^0.5 if block ~ ~ ~ #minecraft:air run function neofunction:system/world/ceresta/rubra/d1/ped/ray {r:$(r),g:$(g),b:$(b)}
