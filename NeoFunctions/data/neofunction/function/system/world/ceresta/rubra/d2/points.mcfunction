# 命名：points
# 説明：第二章の NPC と仕掛けの目印をすべて置く（座標はここだけに書く）
# 説明：生成プログラム Gen2（scratchpad の rubra_build）が、建物と同じ座標で書き出したもの。建物を作り直したら、これも書き出し直す
# 説明：仕掛けは目印（marker・interaction）からの相対位置で動く。決まりごとは設計書の ■7
# 実行条件：セレスタ次元で、チャンクが読み込まれていること
# >/function neofunction:system/world/ceresta/rubra/d2/setup_in
# =/function neofunction:system/world/ceresta/rubra/d2/points

# 内容
execute positioned 959.5 44 3271.5 run function neofunction:asset/summon/904
tp @e[type=villager,tag=rubra_ordo] 959.5 44 3271.5 90 0
summon marker 948.5 44 3271.5 {Tags:["rubra_d2","rubra_mira_kan"]}
# カシムは湖の西岸の石の船着き場
execute positioned 925.5 44 3265.5 run function neofunction:asset/summon/905
tp @e[type=villager,tag=rubra_kasim] 925.5 44 3265.5 -90 0
execute positioned 941.5 44 3292.5 run function neofunction:asset/summon/906
execute positioned 940.5 44 3294.5 run function neofunction:asset/summon/906
summon marker 924.5 45 3272.5 {Tags:["rubra_d2","rubra_mira_lake"]}
summon marker 935.5 44 3286.5 {Tags:["rubra_d2","rubra_mira_wash"]}
summon marker 960.5 70 3219.5 {Tags:["rubra_d2","rubra_door","rubra_door_gate","rubra_door_x"]}
summon interaction 960.5 70 3220.5 {Tags:["rubra_click","rubra_d2","rubra_gate"],width:3.0f,height:3.0f,response:1b}
# 入口を水守の館の北の壁へ（地下の水守の通り道で、最初の広間の東につながる）。開けると滝の裏の扉も開く（外への出口）。館の扉は壁と同じ石の隠し扉（rubra_door_wall。真ん中の水色の模様のタイルが目印）
summon marker 959.5 45 3268.5 {Tags:["rubra_d2","rubra_door","rubra_door_gate","rubra_door_wall"]}
summon interaction 959.5 45 3269.2 {Tags:["rubra_click","rubra_d2","rubra_gate"],width:3.0f,height:3.0f,response:1b}
summon marker 964.5 60 3195.5 {Tags:["rubra_d2","rubra_gauge","rubra_gauge_0"]}
summon interaction 962.5 60 3195.5 {Tags:["rubra_click","rubra_d2","rubra_valve","rubra_valve_0"],width:1.0f,height:1.5f,response:1b}
summon marker 960.5 60 3187.5 {Tags:["rubra_d2","rubra_door","rubra_door_0","rubra_door_x"]}
summon marker 958.5 60 3198.5 {Tags:["rubra_d2","rubra_mira_wait","rubra_mira_w1"]}
summon interaction 964.5 55 3175.5 {Tags:["rubra_click","rubra_d2","rubra_valve","rubra_valve_e"],width:1.0f,height:1.5f,response:1b}
summon interaction 956.5 55 3175.5 {Tags:["rubra_click","rubra_d2","rubra_valve","rubra_valve_w"],width:1.0f,height:1.5f,response:1b}
summon interaction 963.5 55 3171.5 {Tags:["rubra_click","rubra_d2","rubra_valve","rubra_valve_n"],width:1.0f,height:1.5f,response:1b}
summon interaction 960.5 54 3177.5 {Tags:["rubra_click","rubra_d2","rubra_plug"],width:1.0f,height:1.0f,response:1b}
summon marker 965.5 55 3178.5 {Tags:["rubra_d2","rubra_gauge","rubra_gauge_e"]}
summon marker 955.5 55 3178.5 {Tags:["rubra_d2","rubra_gauge","rubra_gauge_w"]}
summon marker 957.5 55 3171.5 {Tags:["rubra_d2","rubra_gauge","rubra_gauge_n"]}
summon marker 960.5 55 3169.5 {Tags:["rubra_d2","rubra_door","rubra_door_n","rubra_door_x"]}
summon interaction 960.5 55 3170.5 {Tags:["rubra_click","rubra_d2","rubra_northlock"],width:3.0f,height:3.0f,response:1b}
summon marker 969.5 55 3175.5 {Tags:["rubra_d2","rubra_bridge","rubra_bridge_e"]}
summon interaction 984.5 56 3175.5 {Tags:["rubra_click","rubra_d2","rubra_pick","rubra_pick_key"],width:1.0f,height:1.2f,response:1b}
summon marker 953.5 55 3175.5 {Tags:["rubra_d2","rubra_door","rubra_door_w","rubra_door_z"]}
summon interaction 943.5 56 3178.5 {Tags:["rubra_click","rubra_d2","rubra_pick","rubra_pick_plug"],width:1.0f,height:1.2f,response:1b}
summon interaction 960.5 53 3155.5 {Tags:["rubra_click","rubra_d2","rubra_pick","rubra_pick_j2"],width:1.0f,height:1.2f,response:1b}
# 黒い水の水門は二つ（西の端と東の端）。12 秒のうちに両方を開けると流れる（番人の水門の練習）
summon interaction 951.5 52 3161.5 {Tags:["rubra_click","rubra_d2","rubra_fvalve","rubra_fvalve_1"],width:1.0f,height:1.5f,response:1b}
summon interaction 969.5 52 3161.5 {Tags:["rubra_click","rubra_d2","rubra_fvalve","rubra_fvalve_2"],width:1.0f,height:1.5f,response:1b}
summon marker 957.5 52 3159.5 {Tags:["rubra_d2","rubra_mira_wait","rubra_mira_w2"]}
summon marker 974.5 52 3158.5 {Tags:["rubra_d2","rubra_flush"]}
# 水門は壁ぎわの斜め 4 か所の床
summon interaction 937.5 40 3137.5 {Tags:["rubra_click","rubra_d2","rubra_kvalve","rubra_kvalve_1"],width:1.0f,height:1.5f,response:1b}
summon interaction 963.5 40 3137.5 {Tags:["rubra_click","rubra_d2","rubra_kvalve","rubra_kvalve_2"],width:1.0f,height:1.5f,response:1b}
summon interaction 937.5 40 3163.5 {Tags:["rubra_click","rubra_d2","rubra_kvalve","rubra_kvalve_3"],width:1.0f,height:1.5f,response:1b}
summon interaction 963.5 40 3163.5 {Tags:["rubra_click","rubra_d2","rubra_kvalve","rubra_kvalve_4"],width:1.0f,height:1.5f,response:1b}
summon marker 950.5 40 3150.5 {Tags:["rubra_d2","rubra_keeper_center"]}
summon marker 960.5 40 3131.5 {Tags:["rubra_d2","rubra_selen_spot"]}
summon marker 960.5 40 3127.5 {Tags:["rubra_d2","rubra_door","rubra_door_spring","rubra_door_x"]}
summon marker 966.5 40 3146.5 {Tags:["rubra_d2","rubra_mira_wait","rubra_mira_w3"]}
summon interaction 960.5 41 3121.5 {Tags:["rubra_click","rubra_d2","rubra_pick","rubra_pick_tear"],width:1.0f,height:1.0f,response:1b}
summon marker 966.5 74 3213.5 {Tags:["rubra_d2","rubra_fall_src"]}
summon marker 967.5 74 3213.5 {Tags:["rubra_d2","rubra_fall_src"]}
summon marker 968.5 74 3213.5 {Tags:["rubra_d2","rubra_fall_src"]}
summon marker 969.5 74 3213.5 {Tags:["rubra_d2","rubra_fall_src"]}
summon marker 971.5 74 3213.5 {Tags:["rubra_d2","rubra_fall_src"]}
summon marker 972.5 74 3213.5 {Tags:["rubra_d2","rubra_fall_src"]}
summon marker 973.5 74 3213.5 {Tags:["rubra_d2","rubra_fall_src"]}
