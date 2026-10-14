# 命名：setup_in
# 説明：【追加：2026-10-09 ルブラ編】第二章の NPC と仕掛けを置き直す：古いもの（タグ rubra_d2）を消し、目印を置き（points）、記録を初めに戻して、柱・扉・橋を最初の状態にする
# 実行条件：セレスタ次元
# >/function neofunction:system/rubra/d2/setup_2
# =/function neofunction:system/rubra/d2/setup_in

# 内容
# 建築（region の差し替え）がまだのワールドでは何も置かない：滝の裏の扉の下の石（960, 69, 3219）で見分ける
execute unless block 960 69 3219 minecraft:prismarine_bricks run return run function neofunction:system/rubra/d2/not_built
tag @e[type=villager,tag=rubra_d2] add del
tag @e[type=iron_golem,tag=rubra_d2] add del
tag @e[type=illusioner,tag=rubra_d2] add del
kill @e[type=!villager,type=!iron_golem,type=!illusioner,type=!player,tag=rubra_d2]
function neofunction:system/rubra/d2/points
# 記録：入口の広間の柱は 0 から（輪を 2 回まわすと扉が開く）、三つの水門の間は合わせて 2 つぶんで、はじめは北に 2
data modify storage neofunction:rubra d2 set value {total:2,lv:{z:0,e:0,w:0,n:2},plug:0b,key:0b,unlock:0b,flushed:0b,gate:0b,kopen:{v1:0,v2:0,v3:0,v4:0},selen:0b,tear:0b,fv:{a:0,b:0},fvmsg:0b}
# 【追加：2026-10-14】黒い水の通路の南の口をふさぎ、黒い水を戻す
function neofunction:system/rubra/d2/seal
# 【追加：2026-10-14】カシムのそばの焚き火。目印は points で新しい位置に置いたので、一度だけの反映（d2v・d2h）は済みにする
execute if block 926 44 3267 minecraft:air run setblock 926 44 3267 minecraft:campfire[lit=true,signal_fire=false,facing=west]
data modify storage neofunction:rubra d2v set value 3
data modify storage neofunction:rubra d2h set value 1
function neofunction:system/rubra/d2/water/apply
# 【追加：2026-10-14】ボスを倒したあとの報酬（宝箱・帰還ゲート）を消す
function neofunction:system/rubra/d2/reward_clear
# 【追加：2026-10-14】館の北の壁の隠し扉を閉じる（壁に戻す）
execute as @e[type=marker,tag=rubra_door_wall] at @s run function neofunction:system/rubra/d2/door/close
