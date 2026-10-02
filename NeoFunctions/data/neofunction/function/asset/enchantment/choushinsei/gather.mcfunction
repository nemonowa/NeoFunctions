# 命名：gather
# 説明：浮上中。半径 12 から 1 へ縮む光の輪と、体へ集まる粒
# 実行条件：爆心として、その位置で（temp の #nk_now に経過 tick）
# >/function neofunction:asset/enchantment/choushinsei/tick
# =/function neofunction:asset/enchantment/choushinsei/gather


# 内容
scoreboard players set #nk_rr temp 125
scoreboard players operation #nk_rr temp -= #nk_now temp
scoreboard players operation #nk_rr temp -= #nk_now temp
scoreboard players operation #nk_rr temp -= #nk_now temp
data modify storage neofunction:enchantment ring.p set value "minecraft:end_rod"
data modify storage neofunction:enchantment ring.c set value 1
data modify storage neofunction:enchantment ring.d set value 0
execute store result storage neofunction:enchantment ring.r float 0.1 run scoreboard players get #nk_rr temp
execute positioned ~ ~0.7 ~ run function neofunction:asset/enchantment/core/ring with storage neofunction:enchantment ring
particle minecraft:portal ~ ~1 ~ 0 0 0 8 40 force
