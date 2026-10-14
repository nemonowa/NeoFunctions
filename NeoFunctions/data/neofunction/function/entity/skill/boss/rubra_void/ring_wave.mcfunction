# 命名：ring_wave
# 説明：【追加：2026-10-09 ルブラ編】衝撃波の輪 1 tick ぶん：半径 rr の輪に粒を並べ、輪の上（rr−1.5〜rr+0.5）で地面に立っている人に 7 ダメージ
# 実行条件：実行位置 舞台の真ん中。引数 rr（storage fin から）
# >/function neofunction:entity/skill/boss/rubra_void/ring_tick
# =/function neofunction:entity/skill/boss/rubra_void/ring_wave

# 内容
$execute rotated 0 0 positioned ^ ^0.3 ^$(rr) run particle minecraft:dust{color:[1.0,0.35,0.25],scale:2.0} ~ ~ ~ 0.6 0.1 0.6 0 4 force @a[distance=..128]
$execute rotated 30 0 positioned ^ ^0.3 ^$(rr) run particle minecraft:dust{color:[1.0,0.35,0.25],scale:2.0} ~ ~ ~ 0.6 0.1 0.6 0 4 force @a[distance=..128]
$execute rotated 60 0 positioned ^ ^0.3 ^$(rr) run particle minecraft:dust{color:[1.0,0.35,0.25],scale:2.0} ~ ~ ~ 0.6 0.1 0.6 0 4 force @a[distance=..128]
$execute rotated 90 0 positioned ^ ^0.3 ^$(rr) run particle minecraft:dust{color:[1.0,0.35,0.25],scale:2.0} ~ ~ ~ 0.6 0.1 0.6 0 4 force @a[distance=..128]
$execute rotated 120 0 positioned ^ ^0.3 ^$(rr) run particle minecraft:dust{color:[1.0,0.35,0.25],scale:2.0} ~ ~ ~ 0.6 0.1 0.6 0 4 force @a[distance=..128]
$execute rotated 150 0 positioned ^ ^0.3 ^$(rr) run particle minecraft:dust{color:[1.0,0.35,0.25],scale:2.0} ~ ~ ~ 0.6 0.1 0.6 0 4 force @a[distance=..128]
$execute rotated 180 0 positioned ^ ^0.3 ^$(rr) run particle minecraft:dust{color:[1.0,0.35,0.25],scale:2.0} ~ ~ ~ 0.6 0.1 0.6 0 4 force @a[distance=..128]
$execute rotated 210 0 positioned ^ ^0.3 ^$(rr) run particle minecraft:dust{color:[1.0,0.35,0.25],scale:2.0} ~ ~ ~ 0.6 0.1 0.6 0 4 force @a[distance=..128]
$execute rotated 240 0 positioned ^ ^0.3 ^$(rr) run particle minecraft:dust{color:[1.0,0.35,0.25],scale:2.0} ~ ~ ~ 0.6 0.1 0.6 0 4 force @a[distance=..128]
$execute rotated 270 0 positioned ^ ^0.3 ^$(rr) run particle minecraft:dust{color:[1.0,0.35,0.25],scale:2.0} ~ ~ ~ 0.6 0.1 0.6 0 4 force @a[distance=..128]
$execute rotated 300 0 positioned ^ ^0.3 ^$(rr) run particle minecraft:dust{color:[1.0,0.35,0.25],scale:2.0} ~ ~ ~ 0.6 0.1 0.6 0 4 force @a[distance=..128]
$execute rotated 330 0 positioned ^ ^0.3 ^$(rr) run particle minecraft:dust{color:[1.0,0.35,0.25],scale:2.0} ~ ~ ~ 0.6 0.1 0.6 0 4 force @a[distance=..128]
$execute as @a[distance=..$(rr).9,gamemode=!spectator,tag=!rubra_ringhit,predicate=neofunction:rubra/on_ground] unless entity @s[distance=..$(rr)] run function neofunction:entity/skill/boss/rubra_void/ring_hit
