# 命名：sand_spawn
# 説明：【追加：2026-10-14 ルブラ編】砂の弾を 1 つ：今の向きに飛ぶ（sand_tick）。最初から check を付けて共通の出現処理を通さない
# 実行条件：実行位置と向き 撃ち出す所と向き
# >/function neofunction:entity/skill/boss/rubra_worm/breath
# =/function neofunction:entity/skill/boss/rubra_worm/sand_spawn

# 内容
summon item_display ~ ~1 ~ {Tags:["check","rubra_d1","rubra_worm_part","rubra_wsand","rubra_wsand_new"],item:{id:"minecraft:red_sand",count:1},brightness:{block:12,sky:12},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]},view_range:4.0f}
tp @e[type=item_display,tag=rubra_wsand_new] ~ ~1 ~ ~ ~
tag @e[type=item_display,tag=rubra_wsand_new] remove rubra_wsand_new
