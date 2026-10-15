# 命名：setup_in
# 説明：第三章の目印を置き直す：古いもの（タグ rubra_d3）を消し、目印を置き（points）、記録を初めに戻す
# 実行条件：セレスタ次元
# >/function neofunction:system/rubra/d3/setup_2
# =/function neofunction:system/rubra/d3/setup_in

# 内容
# 建築（塔の下の階段・零の揺籃）が入っていないワールドでは何も置かない。見分けは、螺旋階段のいちばん下の柱の模様入りの深層岩 (921, 23, 3279)
execute unless block 921 23 3279 minecraft:chiseled_deepslate run return run function neofunction:system/rubra/d3/not_built
tag @e[type=evoker,tag=rubra_d3] add del
tag @e[type=vex,tag=rubra_d3] add del
kill @e[type=!evoker,type=!vex,type=!player,type=!villager,tag=rubra_d3]
function neofunction:system/rubra/d3/points
# 街に置くアズールの手記（その一・三・四）
function neofunction:system/rubra/journals
# 塔の床石を閉じ直す（やり直しのとき）
execute as @e[type=marker,tag=rubra_cradle_hatch,limit=1] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:polished_deepslate_slab replace minecraft:air
data modify storage neofunction:rubra d3 set value {hatch:0b,retry:0b,inv:0,pulled:0,broken:0,xt:{s1:0b,s2:0b,s3:0b,p1:0b,p2:0b,p3:0b,m1:0b,pull:{i:0,t:0}}}
# 結晶の封は近づいたときに置く（xtal/check）。広間の中心は points で新しい位置に置いたので、一度だけの反映（d3v）は済みにする
data modify storage neofunction:rubra d3v set value 1
tellraw @a[gamemode=creative] {"text":"Ready! > neofunction:system/rubra/d3/setup（第三章の目印を置きました）","color":"gray"}
# ボスを倒したあとの報酬（宝箱・帰還ゲート）を消す
function neofunction:system/rubra/d3/reward_clear
