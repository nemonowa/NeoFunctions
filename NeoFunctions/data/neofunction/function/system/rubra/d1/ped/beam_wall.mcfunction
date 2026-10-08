# 命名：beam_wall
# 説明：【追加：2026-10-08 ルブラ編】光の筋：外れの向き（灰色で、広間の壁に当たって消える）
# 実行条件：引数 px pz（台）wx wy wz（壁）
# >/function neofunction:system/rubra/d1/ped/beams
# =/function neofunction:system/rubra/d1/ped/beam_wall

# 内容
scoreboard players set #rubra_ray temp 40
$execute positioned $(px) 15.5 $(pz) facing $(wx) $(wy) $(wz) run function neofunction:system/rubra/d1/ped/ray {r:0.6,g:0.6,b:0.6}
