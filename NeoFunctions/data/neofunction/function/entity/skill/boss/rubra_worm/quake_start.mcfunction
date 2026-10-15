# 命名：quake_start
# 説明：地響き：潜った所から砂の輪が広がり始める（半径 1 → 10、quake_tick）。跳べば避けられる
# 実行条件：実行者・実行位置 本体（潜りきった所）
# >/function neofunction:entity/skill/boss/rubra_worm/arrive
# =/function neofunction:entity/skill/boss/rubra_worm/quake_start

# 内容
kill @e[type=marker,tag=rubra_wquake]
summon marker ~ -40 ~ {Tags:["check","rubra_d1","rubra_worm_part","rubra_wquake"]}
data modify storage neofunction:rubra worm.q set value 10
tag @a remove rubra_wqhit
playsound minecraft:entity.warden.dig hostile @a[distance=..64] ~ -40 ~ 2 0.6
