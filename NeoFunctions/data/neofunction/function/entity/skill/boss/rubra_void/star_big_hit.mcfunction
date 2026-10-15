# 命名：star_big_hit
# 説明：巨大な黒星の着弾：舞台の真ん中から 9 マスの人に 20 ダメージ（16 → 20）。そこから黒い水の波紋が 2 重に広がる（ripple_tick、地面に立っていると当たる。跳べば避けられる）
# 説明：エリートチャレンジ（fin.elite）ではダメージ 1.5 倍
# 実行条件：実行者 巨大な黒星
# >/function neofunction:entity/skill/boss/rubra_void/star_big_fall
# =/function neofunction:entity/skill/boss/rubra_void/star_big_hit

# 内容
kill @e[type=block_display,tag=rubra_bstar_big]
data modify storage neofunction:rubra fin.rp set value 1
tag @a remove rubra_riphit
execute positioned 921.5 200 3282.5 run particle minecraft:explosion_emitter ~ ~1 ~ 3 1 3 0 6 force @a[distance=..200]
execute positioned 921.5 200 3282.5 run particle minecraft:squid_ink ~ ~1 ~ 8 1 8 0.1 400 force @a[distance=..200]
execute positioned 921.5 200 3282.5 run playsound minecraft:entity.generic.explode hostile @a[distance=..200] ~ ~ ~ 4 0.4
execute unless data storage neofunction:rubra fin{elite:1b} positioned 921.5 200 3282.5 as @a[distance=..9,gamemode=!spectator] run damage @s 20 minecraft:magic by @e[type=ghast,tag=rubra_void,limit=1]
execute if data storage neofunction:rubra fin{elite:1b} positioned 921.5 200 3282.5 as @a[distance=..9,gamemode=!spectator] run damage @s 30 minecraft:magic by @e[type=ghast,tag=rubra_void,limit=1]
