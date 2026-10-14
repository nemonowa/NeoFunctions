# 命名：charge_warn_start
# 説明：【追加：2026-10-14 ルブラ編】突進の予告を始める：床（y-40）に頭を出して吠える（1 秒、後半は 0.75 秒）
# 実行条件：実行者・実行位置 本体（突進の始まりの真下）
# >/function neofunction:entity/skill/boss/rubra_worm/arrive
# =/function neofunction:entity/skill/boss/rubra_worm/charge_warn_start

# 内容
tp @s ~ -40 ~
data modify storage neofunction:rubra worm.state set value "cwarn"
data modify storage neofunction:rubra worm.t set value 20
execute if data storage neofunction:rubra worm{phase:2} run data modify storage neofunction:rubra worm.t set value 15
data modify storage neofunction:rubra worm.d set value 0
tag @a remove rubra_wchit
playsound minecraft:entity.ravager.roar hostile @a[distance=..64] ~ ~ ~ 2.5 0.6
playsound minecraft:entity.generic.explode hostile @a[distance=..64] ~ ~ ~ 1 0.6
particle minecraft:block{block_state:"minecraft:red_terracotta"} ~ ~ ~ 1.5 0.5 1.5 0 60 normal
