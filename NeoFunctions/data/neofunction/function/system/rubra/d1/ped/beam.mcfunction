# 命名：beam
# 説明：光の筋：台の上（y15.5）から扉の真上（y14.5）まで、そこからまっすぐ下へ扉まで。色は r g b
# 実行条件：引数 px pz（台）gx gz（扉）r g b（色）
# >/function neofunction:system/rubra/d1/ped/beams
# =/function neofunction:system/rubra/d1/ped/beam

# 内容
scoreboard players set #rubra_ray temp 40
$execute positioned $(px) 15.5 $(pz) facing $(gx) 14.5 $(gz) run function neofunction:system/rubra/d1/ped/ray {r:$(r),g:$(g),b:$(b)}
scoreboard players set #rubra_ray temp 60
$execute positioned $(gx) 14.5 $(gz) rotated 0 90 run function neofunction:system/rubra/d1/ped/ray {r:$(r),g:$(g),b:$(b)}
