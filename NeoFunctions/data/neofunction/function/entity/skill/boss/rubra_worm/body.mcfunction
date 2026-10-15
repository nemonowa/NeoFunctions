# 命名：body
# 説明：頭の位置を動きの記録（hist、新しい順に 37）に足し、頭の見た目と 12 の節を記録の 3・6・…・36 番目の位置に置く
# 実行条件：実行者 本体
# >/function neofunction:entity/skill/boss/rubra_worm/tick
# =/function neofunction:entity/skill/boss/rubra_worm/body

# 内容
data modify storage neofunction:rubra worm.hist prepend value {x:0.0d,y:0.0d,z:0.0d}
data modify storage neofunction:rubra worm.hist[0].x set from entity @s Pos[0]
data modify storage neofunction:rubra worm.hist[0].y set from entity @s Pos[1]
data modify storage neofunction:rubra worm.hist[0].z set from entity @s Pos[2]
data remove storage neofunction:rubra worm.hist[37]
execute at @s run tp @e[type=block_display,tag=rubra_worm_head] ~ ~ ~ 0 0
function neofunction:entity/skill/boss/rubra_worm/seg {i:1,h:3}
function neofunction:entity/skill/boss/rubra_worm/seg {i:2,h:6}
function neofunction:entity/skill/boss/rubra_worm/seg {i:3,h:9}
function neofunction:entity/skill/boss/rubra_worm/seg {i:4,h:12}
function neofunction:entity/skill/boss/rubra_worm/seg {i:5,h:15}
function neofunction:entity/skill/boss/rubra_worm/seg {i:6,h:18}
function neofunction:entity/skill/boss/rubra_worm/seg {i:7,h:21}
function neofunction:entity/skill/boss/rubra_worm/seg {i:8,h:24}
function neofunction:entity/skill/boss/rubra_worm/seg {i:9,h:27}
function neofunction:entity/skill/boss/rubra_worm/seg {i:10,h:30}
function neofunction:entity/skill/boss/rubra_worm/seg {i:11,h:33}
function neofunction:entity/skill/boss/rubra_worm/seg {i:12,h:36}
