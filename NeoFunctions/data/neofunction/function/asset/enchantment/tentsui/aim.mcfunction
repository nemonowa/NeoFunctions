# 命名：aim
# 説明：照準。赤い輪を半径 7 から 1 へ縮め、空から細い赤い光を下ろす
# 実行条件：爆心として（temp の #nk_now に経過 tick）
# >/function neofunction:asset/enchantment/tentsui/tick
# =/function neofunction:asset/enchantment/tentsui/aim


# 内容
scoreboard players set #nk_rr temp 70
scoreboard players operation #nk_rr temp -= #nk_now temp
execute store result storage neofunction:enchantment ring.r float 0.1 run scoreboard players get #nk_rr temp
data modify storage neofunction:enchantment ring.p set value "minecraft:dust{color:[1.0,0.1,0.1],scale:2.0}"
data modify storage neofunction:enchantment ring.c set value 1
data modify storage neofunction:enchantment ring.d set value 0
function neofunction:asset/enchantment/core/ring with storage neofunction:enchantment ring
particle minecraft:dust{color:[1.0,0.0,0.0],scale:1.5} ~ ~30 ~ 0 30 0 0 30 force
