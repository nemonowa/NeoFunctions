# 命名：ripple_tick
# 説明：【追加：2026-10-13 ルブラ編】黒い水の波紋（毎 tick、rp を数える）：半径 rp と rp−7 の 2 重の輪が広がる。輪の上に黒い水を置き、地面に立っている人に 7 ダメージ（一人一度）。半径 34 で終わる
# 説明：【変更：2026-10-13】変数入りの関数には、必要な値だけの小さな記録（storage neofunction:rubra fin_m）を渡す（fin を丸ごと渡すと、毎 tick とても重くなった）
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/star_tick
# =/function neofunction:entity/skill/boss/rubra_void/ripple_tick

# 内容
execute store result score #rv_rp temp run data get storage neofunction:rubra fin.rp
scoreboard players add #rv_rp temp 1
execute store result storage neofunction:rubra fin.rp int 1 run scoreboard players get #rv_rp temp
execute store result storage neofunction:rubra fin_m.rr int 1 run scoreboard players get #rv_rp temp
execute positioned 921.5 200 3282.5 run function neofunction:entity/skill/boss/rubra_void/ripple_ring with storage neofunction:rubra fin_m
scoreboard players remove #rv_rp temp 7
execute if score #rv_rp temp matches 1.. store result storage neofunction:rubra fin_m.rr int 1 run scoreboard players get #rv_rp temp
execute if score #rv_rp temp matches 1.. positioned 921.5 200 3282.5 run function neofunction:entity/skill/boss/rubra_void/ripple_ring with storage neofunction:rubra fin_m
execute if score #rv_rp temp matches 34.. run data modify storage neofunction:rubra fin.rp set value 0
execute if score #rv_rp temp matches 34.. run tag @a remove rubra_riphit
