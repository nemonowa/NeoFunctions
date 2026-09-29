# 命名：backlash（246）
# 説明：246（オーバードーズ）の反動ダメージ処理専用ファイル。
# 説明：246発動時に schedule function で8秒後（160t）にappend予約され、単発で呼び出される。
# 説明：対象は backlash タグを持つプレイヤー全員。ダメージ量は dmg12〜dmg4 の固定タグ（LVL帯ごとに1つだけ付与）で分岐。
# 説明：スコアボードは使わず、タグの組み合わせだけでダメージ量を判定している（1.20.4対応）。
# >
# =/function neofunction:asset/skill/246/backlash


execute as @a[tag=backlash] at @s run particle minecraft:large_smoke ~ ~1 ~ 0.3 0.3 0.3 0.02 15 force
execute as @a[tag=backlash] at @s run playsound minecraft:entity.wither.death record @a ~ ~ ~ 1.5 0.5

execute as @a[tag=backlash,tag=dmg24] run damage @s 24 minecraft:out_of_world
execute as @a[tag=backlash,tag=dmg20] run damage @s 20 minecraft:out_of_world
execute as @a[tag=backlash,tag=dmg16] run damage @s 16 minecraft:out_of_world
execute as @a[tag=backlash,tag=dmg12] run damage @s 12 minecraft:out_of_world
execute as @a[tag=backlash,tag=dmg8] run damage @s 8 minecraft:out_of_world

execute as @a[tag=backlash] run tag @s remove dmg24
execute as @a[tag=backlash] run tag @s remove dmg20
execute as @a[tag=backlash] run tag @s remove dmg16
execute as @a[tag=backlash] run tag @s remove dmg12
execute as @a[tag=backlash] run tag @s remove dmg8
execute as @a[tag=backlash] run tag @s remove backlash
