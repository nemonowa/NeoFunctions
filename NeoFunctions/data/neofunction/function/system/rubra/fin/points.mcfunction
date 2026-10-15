# 命名：points
# 説明：終章の目印・NPC をすべて置く（座標はここだけに書く）。広場（921,44,3300 のあたり）、ヴァルカの鍛冶場の前、塔の一階、湖の上のヴォイド・ゼロの芯、夜空の赤い星の場所、広場の灯籠
# 実行条件：セレスタ次元、チャンクが読み込まれていること
# >/function neofunction:system/rubra/fin/setup_in
# =/function neofunction:system/rubra/fin/points

# 内容
# ヴァルカ（鍛冶場の前）
summon marker 907.5 44 3297.5 {Tags:["rubra_fin","rubra_fin_valka"]}
execute positioned 907.5 44 3297.5 run function neofunction:asset/summon/912
# 星の広場：オルド・ミラ・セレン
summon marker 921.5 44 3300.5 {Tags:["rubra_fin","rubra_fin_ordo"]}
summon marker 913.5 44 3300.5 {Tags:["rubra_fin","rubra_fin_mira"]}
summon marker 913.5 44 3306.5 {Tags:["rubra_fin","rubra_fin_selen"]}
# 塔の一階：ミラとセレン（楔を抜く所）
summon marker 917.5 47 3281.5 {Tags:["rubra_fin","rubra_fin_tmira"]}
summon marker 921.5 47 3277.5 {Tags:["rubra_fin","rubra_fin_tselen"]}
# 湖の上：ヴォイド・ゼロの芯。広場の真ん中：引き寄せから助けられた人を戻す所・星の子
summon marker 941.5 64 3290.5 {Tags:["rubra_fin","rubra_fin_core"]}
summon marker 921.5 44 3302.5 {Tags:["rubra_fin","rubra_fin_safe"]}
summon marker 921.5 46 3300.5 {Tags:["rubra_fin","rubra_fin_child"]}
# 夜空の赤い星（結末 A・C で灯る）
summon marker 921.5 180 3282.5 {Tags:["rubra_fin","rubra_fin_star"]}
# 灯籠を掲げる人々（広場のまわり 8 か所）
summon marker 931.5 45 3300.5 {Tags:["rubra_fin","rubra_fin_lantern"]}
summon marker 928.5 45 3307.5 {Tags:["rubra_fin","rubra_fin_lantern"]}
summon marker 921.5 45 3310.5 {Tags:["rubra_fin","rubra_fin_lantern"]}
summon marker 914.5 45 3307.5 {Tags:["rubra_fin","rubra_fin_lantern"]}
summon marker 911.5 45 3300.5 {Tags:["rubra_fin","rubra_fin_lantern"]}
summon marker 914.5 45 3293.5 {Tags:["rubra_fin","rubra_fin_lantern"]}
summon marker 936.5 45 3288.5 {Tags:["rubra_fin","rubra_fin_lantern"]}
summon marker 905.5 45 3297.5 {Tags:["rubra_fin","rubra_fin_lantern"]}
