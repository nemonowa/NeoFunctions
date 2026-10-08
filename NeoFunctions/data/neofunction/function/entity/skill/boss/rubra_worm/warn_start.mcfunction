# 命名：warn_start
# 説明：【追加：2026-10-08 ルブラ編】飛び出す前の予告を始める（20 tick）
# 実行条件：実行者 本体（狙いの真下の地中）
# >/function neofunction:entity/skill/boss/rubra_worm/arrive
# =/function neofunction:entity/skill/boss/rubra_worm/warn_start

# 内容
data modify storage neofunction:rubra worm.state set value "warn"
data modify storage neofunction:rubra worm.t set value 20
execute at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @a[distance=..48] ~ -40 ~ 1.2 0.5
