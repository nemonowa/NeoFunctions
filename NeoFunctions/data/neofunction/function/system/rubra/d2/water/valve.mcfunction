# 命名：valve
# 説明：三つの水門の間の青銅の輪を回したとき：その部屋（r＝e・w・n）に水を 1 つぶん足す
# 説明：足すと合わせての量（d2.total）をこえるときは、その部屋を 0 に戻す（水が真ん中の溜めに戻る）
# 実行条件：実行者 プレイヤー。引数 r
# >/function neofunction:system/adv/player_interacted_with_entity/rubra_click
# =/function neofunction:system/rubra/d2/water/valve

# 内容
$execute store result score #r2_v temp run data get storage neofunction:rubra d2.lv.$(r)
# 余り（この部屋に入れられる上限）＝ 合わせての量 − 東 − 西 − 北 ＋ この部屋の今の量
execute store result score #r2_a temp run data get storage neofunction:rubra d2.total
execute store result score #r2_t temp run data get storage neofunction:rubra d2.lv.e
scoreboard players operation #r2_a temp -= #r2_t temp
execute store result score #r2_t temp run data get storage neofunction:rubra d2.lv.w
scoreboard players operation #r2_a temp -= #r2_t temp
execute store result score #r2_t temp run data get storage neofunction:rubra d2.lv.n
scoreboard players operation #r2_a temp -= #r2_t temp
scoreboard players operation #r2_a temp += #r2_v temp
scoreboard players operation #r2_o temp = #r2_v temp
scoreboard players add #r2_v temp 1
execute if score #r2_v temp > #r2_a temp run scoreboard players set #r2_v temp 0
$execute store result storage neofunction:rubra d2.lv.$(r) int 1 run scoreboard players get #r2_v temp
playsound minecraft:block.grindstone.use block @a[distance=..24] ~ ~ ~ 1 0.6
playsound minecraft:block.water.ambient block @a[distance=..24] ~ ~ ~ 1.5 0.8
function neofunction:system/rubra/d2/water/apply
function neofunction:system/rubra/d2/water/say
# 0 に戻ったとき・入れる水が無かったときは、わけを出す
execute if score #r2_v temp matches 0 if score #r2_o temp matches 1.. run tellraw @s {"text":"輪を回しきると、その部屋の水は真ん中の溜めに戻っていく。","color":"gray","italic":true}
execute if score #r2_v temp matches 0 if score #r2_o temp matches 0 run tellraw @s {"text":"真ん中の溜めに、もう水が残っていない。ほかの部屋の輪を回して、水を溜めに戻そう。","color":"gray","italic":true}
