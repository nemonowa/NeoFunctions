# 命名：upgrade_20261014
# 説明：【追加：2026-10-14 ルブラ編】球の広間の作り直しを、今のワールドに一度だけ反映する（storage neofunction:rubra d3v 1 で済み）。ブロックは region に直接入れた。広間の中心の目印を新しい位置へ。もうセレンを助けたあとなら報酬を置き直す
# 説明：結晶の封（守り石の練習）は近づいたときに置くので、ここでは何もしない（xtal/check）
# 実行条件：実行者 プレイヤー（零の揺籃の中、球の広間の近く。tick/dungeon/rubra3 から）
# >/function neofunction:system/adv/tick/dungeon/rubra3
# =/function neofunction:system/rubra/d3/upgrade_20261014

# 内容
execute if data storage neofunction:rubra cradle{state:"fight"} run return 0
data modify storage neofunction:rubra d3v set value 1
kill @e[type=marker,tag=rubra_arena_center]
summon marker 949.5 -44 3296.5 {Tags:["rubra_d3","rubra_arena_center"]}
execute if data storage neofunction:rubra cradle{state:"done"} run function neofunction:system/rubra/d3/reward_build
