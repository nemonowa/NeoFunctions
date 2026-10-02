# 命名：step
# 説明：爆心ごとの毎 tick の処理（entity/skill/.neo の常時追跡から、タグ neo.nuke の爆心として呼ばれる）。時間を進め、種類ごとの進行・衝撃波を動かす
# 説明：爆心ごとの値（data の t＝経過 tick・kind＝種類・r＝衝撃波の半径（-1 で停止）・h・v＝高さと速さ）を temp の #nk_* に読み出し、最後に書き戻す
# 実行条件：爆心（マーカー）として、その位置で
# >/function neofunction:entity/skill/.neo
# =/function neofunction:asset/enchantment/core/step


# 内容
execute store result score #nk_t temp run data get entity @s data.t
execute store result score #nk_kind temp run data get entity @s data.kind
execute store result score #nk_r temp run data get entity @s data.r
execute store result score #nk_h temp run data get entity @s data.h
execute store result score #nk_v temp run data get entity @s data.v
scoreboard players add #nk_t temp 1
scoreboard players operation #nk_cur temp = @s neo.nk_id
scoreboard players operation #nk_now temp = #nk_t temp
execute if score #nk_kind temp matches 1 run function neofunction:asset/enchantment/tentsui/tick
execute if score #nk_kind temp matches 2 run function neofunction:asset/enchantment/reiten/tick
execute if score #nk_kind temp matches 3 run function neofunction:asset/enchantment/shuuen/tick
execute if score #nk_kind temp matches 4 run function neofunction:asset/enchantment/choushinsei/tick
execute if score #nk_r temp matches 0.. run function neofunction:asset/enchantment/core/wave
execute store result entity @s data.t int 1 run scoreboard players get #nk_t temp
execute store result entity @s data.r int 1 run scoreboard players get #nk_r temp
execute store result entity @s data.h int 1 run scoreboard players get #nk_h temp
execute store result entity @s data.v int 1 run scoreboard players get #nk_v temp
