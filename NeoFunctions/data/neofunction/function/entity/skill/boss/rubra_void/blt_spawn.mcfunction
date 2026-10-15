# 命名：blt_spawn
# 説明：黒い弾を 1 つ：今の向きに飛ぶ（毎 tick 0.45 マス、blt_tick）。最初から check を付けて共通の出現処理を通さない
# 実行条件：実行位置と向き 撃ち出す所と向き
# >/function neofunction:entity/skill/boss/rubra_void/blt_ring_a
# >/function neofunction:entity/skill/boss/rubra_void/blt_ring_b
# >/function neofunction:entity/skill/boss/rubra_void/blt_spiral
# >/function neofunction:entity/skill/boss/rubra_void/blt_fan
# =/function neofunction:entity/skill/boss/rubra_void/blt_spawn

# 内容
summon item_display ~ ~ ~ {Tags:["check","rubra_fin","rubra_blt","rubra_blt_new"],item:{id:"minecraft:black_concrete",count:1},brightness:{block:15,sky:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]},view_range:4.0f}
tp @e[type=item_display,tag=rubra_blt_new] ~ ~ ~ facing ^ ^ ^1
tag @e[type=item_display,tag=rubra_blt_new] remove rubra_blt_new
