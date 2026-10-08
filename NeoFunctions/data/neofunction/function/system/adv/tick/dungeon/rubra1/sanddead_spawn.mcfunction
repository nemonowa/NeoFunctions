# 命名：sanddead_spawn
# 説明：【追加：2026-10-08 ルブラ編】床の砂が盛り上がって、砂の亡者になる
# 実行条件：実行位置 湧く場所
# >/function neofunction:system/adv/tick/dungeon/rubra1/sanddead
# =/function neofunction:system/adv/tick/dungeon/rubra1/sanddead_spawn

# 内容
particle minecraft:block{block_state:"minecraft:sand"} ~ ~0.5 ~ 0.4 0.6 0.4 0 40 normal
playsound minecraft:block.sand.break hostile @a[distance=..16] ~ ~ ~ 1 0.6
function neofunction:asset/summon/809
