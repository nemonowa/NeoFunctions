# 命名：defeated
# 説明：【追加：2026-10-09 ルブラ編】戦いの途中なのに本体がいない（倒れる演出を通らずに倒れた）ときの取りこぼし対策：黒い部分と床の黒い水を消し、セレンの場面（428）へ
# 実行条件：実行位置 番人の間の中心
# >/function neofunction:system/adv/tick/quest/40/d2/zone
# =/function neofunction:entity/skill/boss/rubra_keeper/defeated

# 内容
data modify storage neofunction:rubra keeper.state set value "dead"
kill @e[type=block_display,tag=rubra_keeper_black]
kill @e[type=marker,tag=rubra_whip_t]
fill ~-22 ~ ~-22 ~22 ~2 ~22 minecraft:air replace minecraft:black_carpet
execute as @e[type=drowned,tag=rubra_drip,distance=..32] run tag @s add del
tellraw @a[distance=..40] {"text":"――ありがとう。……ゆるして。","color":"#A8E6FF","bold":true,"italic":true}
function neofunction:system/adv/tick/quest/40/d2/428
