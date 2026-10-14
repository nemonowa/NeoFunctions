# 命名：ublt_spawn
# 説明：【追加：2026-10-14 ルブラ編】黒い槍を 1 つ：今の向き（上下も）に飛ぶ（毎 tick 1 マス、ublt_tick）。最初から check を付けて共通の出現処理を通さない
# 実行条件：実行位置と向き 撃ち出す所と向き
# >/function neofunction:entity/skill/boss/rubra_void/ublt_fan
# =/function neofunction:entity/skill/boss/rubra_void/ublt_spawn

# 内容
summon item_display ~ ~ ~ {Tags:["check","rubra_fin","rubra_ublt","rubra_ublt_new"],item:{id:"minecraft:crying_obsidian",count:1},brightness:{block:15,sky:15},teleport_duration:1,transformation:{left_rotation:[0.38f,0.2f,0.1f,0.9f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},view_range:6.0f}
tp @e[type=item_display,tag=rubra_ublt_new] ~ ~ ~ ~ ~
tag @e[type=item_display,tag=rubra_ublt_new] remove rubra_ublt_new
