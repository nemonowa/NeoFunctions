# 命名：points
# 説明：第三章の NPC の居場所と仕掛けの目印をすべて置く（座標はここだけに書く）
# 説明：生成プログラム Gen3（scratchpad の rubra_build）が、建物と同じ座標で書き出したもの。建物を作り直したら、これも書き出し直す
# 説明：仕掛けは目印からの相対位置・距離で動く：浮遊の間（rubra_float、半径 16）、闇の間（rubra_dark、半径 14）、影の湧く所（rubra_shadow_spawn）、
# 説明：反転の間（rubra_inv_spawn_1〜4＝各部屋の入り口、rubra_inv_r<部屋>_d<扉>＝扉の当たり判定）、球の広間（rubra_arena_center）
# 実行条件：セレスタ次元で、チャンクが読み込まれていること
# >/function neofunction:system/rubra/d3/setup_in
# =/function neofunction:system/rubra/d3/points

# 内容
summon marker 921.5 47 3279.5 {Tags:["rubra_d3","rubra_cradle_hatch"]}
summon marker 924.5 47 3281.5 {Tags:["rubra_d3","rubra_ordo_tower"]}
summon marker 917.5 47 3281.5 {Tags:["rubra_d3","rubra_mira_tower"]}
summon marker 921.5 16 3296.5 {Tags:["rubra_d3","rubra_float"]}
summon marker 923.5 24 3285.5 {Tags:["rubra_d3","rubra_mira_wait","rubra_mira_c1"]}
summon marker 955.5 22 3296.5 {Tags:["rubra_d3","rubra_dark"]}
summon marker 949.5 22 3306.5 {Tags:["rubra_d3","rubra_shadow_spawn"]}
summon marker 950.5 22 3291.5 {Tags:["rubra_d3","rubra_shadow_spawn"]}
summon marker 960.5 22 3301.5 {Tags:["rubra_d3","rubra_shadow_spawn"]}
summon marker 955.5 22 3298.5 {Tags:["rubra_d3","rubra_shadow_spawn"]}
summon marker 943.5 22 3293.5 {Tags:["rubra_d3","rubra_mira_wait","rubra_mira_c2"]}
summon interaction 971.5 -8 3312.5 {Tags:["rubra_click","rubra_d3","rubra_invdoor","rubra_inv_r1_d1"],width:1.2f,height:2.0f,response:1b}
summon interaction 976.5 -8 3312.5 {Tags:["rubra_click","rubra_d3","rubra_invdoor","rubra_inv_r1_d2"],width:1.2f,height:2.0f,response:1b}
summon interaction 981.5 -8 3312.5 {Tags:["rubra_click","rubra_d3","rubra_invdoor","rubra_inv_r1_d3"],width:1.2f,height:2.0f,response:1b}
summon marker 976.5 -8 3304.5 {Tags:["rubra_d3","rubra_inv_spawn_1"]}
summon interaction 971.5 -17 3312.5 {Tags:["rubra_click","rubra_d3","rubra_invdoor","rubra_inv_r2_d1"],width:1.2f,height:2.0f,response:1b}
summon interaction 976.5 -17 3312.5 {Tags:["rubra_click","rubra_d3","rubra_invdoor","rubra_inv_r2_d2"],width:1.2f,height:2.0f,response:1b}
summon interaction 981.5 -17 3312.5 {Tags:["rubra_click","rubra_d3","rubra_invdoor","rubra_inv_r2_d3"],width:1.2f,height:2.0f,response:1b}
summon marker 976.5 -17 3304.5 {Tags:["rubra_d3","rubra_inv_spawn_2"]}
summon interaction 971.5 -26 3312.5 {Tags:["rubra_click","rubra_d3","rubra_invdoor","rubra_inv_r3_d1"],width:1.2f,height:2.0f,response:1b}
summon interaction 976.5 -26 3312.5 {Tags:["rubra_click","rubra_d3","rubra_invdoor","rubra_inv_r3_d2"],width:1.2f,height:2.0f,response:1b}
summon interaction 981.5 -26 3312.5 {Tags:["rubra_click","rubra_d3","rubra_invdoor","rubra_inv_r3_d3"],width:1.2f,height:2.0f,response:1b}
summon marker 976.5 -26 3304.5 {Tags:["rubra_d3","rubra_inv_spawn_3"]}
summon marker 972.5 -8 3305.5 {Tags:["rubra_d3","rubra_mira_wait","rubra_mira_c3"]}
summon marker 949.5 -44 3296.5 {Tags:["rubra_d3","rubra_arena_center"]}
summon marker 976.5 -44 3296.5 {Tags:["rubra_d3","rubra_inv_spawn_4"]}
summon marker 973.5 -44 3294.5 {Tags:["rubra_d3","rubra_mira_wait","rubra_mira_c4"]}
