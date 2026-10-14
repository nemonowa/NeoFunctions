# 命名：points2
# 説明：【追加：2026-10-14 ルブラ編】作り直した紅脈の坑の仕掛けの目印（生成プログラム Gen1b が書き出し）：一の層の鉄格子とレバー、二の層の手がかり、休み場の札、大空洞の柱の印、宝箱の戦利品の表
# 実行条件：セレスタ次元（setup_in から）
# >/function neofunction:system/rubra/d1/setup_in
# =/function neofunction:system/rubra/d1/points2

# 内容
summon marker 859.5 44 3264.5 {Tags:["rubra_d1","rubra_l1gate"]}
summon interaction 860.5 45 3244.5 {Tags:["rubra_click","rubra_d1","rubra_l1lever"],width:0.8f,height:0.8f,response:1b}
# 【追加：2026-10-14】三の層の裂け目の手前のランプとボタン（押すと光の橋。l3bridge）
summon interaction 845.5 25.75 3284.25 {Tags:["rubra_click","rubra_d1","rubra_l3bridge"],width:0.7f,height:0.9f,response:1b}
# 【変更：2026-10-14】二の層の迷路の手がかり 3 つと宝箱（MazeGen が書き出し）
summon text_display 831.0 37.6 3241.7 {Tags:["rubra_d1"],Rotation:[180.0f,0.0f],billboard:"fixed",brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]},line_width:200,background:1426063360,text:{text:"",extra:[{text:"鉱夫の刻み\n",color:"#C9A27E",italic:true},{text:"北の灯は\n",color:"white"},{text:"夕べの赤き星",color:"#FF5A4A",bold:true},{text:"へ",color:"white"}]}}
summon text_display 815.3 37.6 3241.0 {Tags:["rubra_d1"],Rotation:[-90.0f,0.0f],billboard:"fixed",brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]},line_width:200,background:1426063360,text:{text:"",extra:[{text:"鉱夫の刻み\n",color:"#C9A27E",italic:true},{text:"西の灯は\n",color:"white"},{text:"夜明けの青き星",color:"#6E9BFF",bold:true},{text:"へ",color:"white"}]}}
summon text_display 831.0 37.6 3259.7 {Tags:["rubra_d1"],Rotation:[180.0f,0.0f],billboard:"fixed",brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]},line_width:200,background:1426063360,text:{text:"",extra:[{text:"鉱夫の刻み\n",color:"#C9A27E",italic:true},{text:"南の灯は\n",color:"white"},{text:"真昼の金の星",color:"#FFD24A",bold:true},{text:"へ",color:"white"}]}}
data merge block 812 36 3234 {LootTable:"neofunction:chest/2"}
summon text_display 846.5 15.2 3255.2 {Tags:["rubra_d1"],Rotation:[0.0f,0.0f],billboard:"fixed",brightness:{block:15,sky:15},line_width:200,background:1426063360,text:{text:"",extra:[{text:"坑夫の休み場\n",color:"#E0A040",bold:true},{text:"ここで休んで（ベッド）、下の空洞へ",color:"gray"}]}}
summon marker 819.5 -40 3280.5 {Tags:["rubra_d1","rubra_wpillar","rubra_wp1"]}
summon marker 805.5 -40 3280.5 {Tags:["rubra_d1","rubra_wpillar","rubra_wp2"]}
summon marker 798.5 -40 3268.5 {Tags:["rubra_d1","rubra_wpillar","rubra_wp3"]}
summon marker 805.5 -40 3256.5 {Tags:["rubra_d1","rubra_wpillar","rubra_wp4"]}
summon marker 819.5 -40 3256.5 {Tags:["rubra_d1","rubra_wpillar","rubra_wp5"]}
# 宝箱（中身は戦利品の表から。開けるまで決まらない）
data merge block 862 44 3244 {LootTable:"neofunction:chest/1"}
data merge block 872 44 3269 {LootTable:"neofunction:chest/1"}
data merge block 837 25 3277 {LootTable:"neofunction:chest/2"}
data merge block 849 13 3259 {LootTable:"neofunction:chest/2"}
# スポナー（中身なし。敵は後で入れる）：(861,44,3248) (868,44,3251) (833,25,3278) (836,25,3297) (843,25,3297)
# 二の層の迷路のスポナー（中身なし）：(842,36,3265) (833,36,3252) (818,36,3261)
