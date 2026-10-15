# 命名：invgo
# 説明：反転の間：部屋 to の入り口（目印 rubra_inv_spawn_<to>）へ移す。くぐる瞬間に視界がくるりと回る演出（暗闇と音）
# 実行条件：実行者 プレイヤー。引数 to＝1〜4（4 は球の広間への通路）
# >/function neofunction:system/rubra/d3/invdoor
# =/function neofunction:system/rubra/d3/invgo

# 内容
effect give @s minecraft:darkness 1 0 true
effect give @s minecraft:nausea 3 0 true
playsound minecraft:block.portal.travel ambient @s ~ ~ ~ 0.2 1.6
$tp @s @e[type=marker,tag=rubra_inv_spawn_$(to),limit=1]
particle minecraft:reverse_portal ~ ~1 ~ 0.4 0.8 0.4 0.05 40 normal
$execute if entity @s[tag=!rubra_inv$(to)] if score #temp main_story matches 436 run tellraw @s {"text":"天地が、逆さまになっている。天井に階段が生え、吊りランタンが上を向いている。……床だと思ったのは、天井だった。","color":"#A8A8C8","italic":true}
$tag @s add rubra_inv$(to)
