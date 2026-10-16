# 命名：upgrade_hall
# 説明：番人の間と壁画の間の作り直しを、今のワールドに一度だけ反映する（storage neofunction:rubra d2h 1 で済み）。ブロックは region に直接入れた
# 説明：番人の間の水門 4 つと中心の目印を新しい位置へ、壁画の間の水門を二つに、まだ黒い水を流していなければ階段の口を黒い水の膜でふさぐ。番人を倒したあとなら報酬を置き直す
# 実行条件：実行者 プレイヤー（涸れ泉の聖堂の中、壁画の間の近く。tick/dungeon/rubra2 から）
# >/function neofunction:system/adv/tick/dungeon/rubra2
# =/function neofunction:system/world/ceresta/rubra/d2/upgrade_hall

# 内容
# 番人と戦っている最中なら、終わってから
execute if data storage neofunction:rubra keeper{state:"fight"} run return 0
data modify storage neofunction:rubra d2h set value 1
kill @e[type=interaction,tag=rubra_kvalve]
kill @e[type=marker,tag=rubra_keeper_center]
summon interaction 937.5 40 3137.5 {Tags:["rubra_click","rubra_d2","rubra_kvalve","rubra_kvalve_1"],width:1.0f,height:1.5f,response:1b}
summon interaction 963.5 40 3137.5 {Tags:["rubra_click","rubra_d2","rubra_kvalve","rubra_kvalve_2"],width:1.0f,height:1.5f,response:1b}
summon interaction 937.5 40 3163.5 {Tags:["rubra_click","rubra_d2","rubra_kvalve","rubra_kvalve_3"],width:1.0f,height:1.5f,response:1b}
summon interaction 963.5 40 3163.5 {Tags:["rubra_click","rubra_d2","rubra_kvalve","rubra_kvalve_4"],width:1.0f,height:1.5f,response:1b}
summon marker 950.5 40 3150.5 {Tags:["rubra_d2","rubra_keeper_center"]}
kill @e[type=interaction,tag=rubra_valve_flush]
kill @e[type=interaction,tag=rubra_fvalve]
summon interaction 951.5 52 3161.5 {Tags:["rubra_click","rubra_d2","rubra_fvalve","rubra_fvalve_1"],width:1.0f,height:1.5f,response:1b}
summon interaction 969.5 52 3161.5 {Tags:["rubra_click","rubra_d2","rubra_fvalve","rubra_fvalve_2"],width:1.0f,height:1.5f,response:1b}
data modify storage neofunction:rubra d2.fv set value {a:0,b:0}
execute unless data storage neofunction:rubra d2{flushed:1b} run function neofunction:system/world/ceresta/rubra/d2/seal
execute if data storage neofunction:rubra keeper{state:"dead"} run function neofunction:system/world/ceresta/rubra/d2/reward_build
