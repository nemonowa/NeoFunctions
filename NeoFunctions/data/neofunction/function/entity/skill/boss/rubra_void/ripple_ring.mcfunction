# 命名：ripple_ring
# 説明：波紋の輪 1 つ（半径 rr）：16 方向に黒い水と粒。輪の上（rr−1〜rr+0.9）で地面に立っている人に 7 ダメージ
# 実行条件：実行位置 舞台の真ん中。引数 rr
# >/function neofunction:entity/skill/boss/rubra_void/ripple_tick
# =/function neofunction:entity/skill/boss/rubra_void/ripple_ring

# 内容
$execute rotated 0 0 positioned ^ ^ ^$(rr) run function neofunction:entity/skill/boss/rubra_void/ink_put
$execute rotated 0 0 positioned ^ ^0.4 ^$(rr) run particle minecraft:squid_ink ~ ~ ~ 0.4 0.1 0.4 0.02 3 force @a[distance=..96]
$execute rotated 22 0 positioned ^ ^ ^$(rr) run function neofunction:entity/skill/boss/rubra_void/ink_put
$execute rotated 22 0 positioned ^ ^0.4 ^$(rr) run particle minecraft:squid_ink ~ ~ ~ 0.4 0.1 0.4 0.02 3 force @a[distance=..96]
$execute rotated 44 0 positioned ^ ^ ^$(rr) run function neofunction:entity/skill/boss/rubra_void/ink_put
$execute rotated 44 0 positioned ^ ^0.4 ^$(rr) run particle minecraft:squid_ink ~ ~ ~ 0.4 0.1 0.4 0.02 3 force @a[distance=..96]
$execute rotated 66 0 positioned ^ ^ ^$(rr) run function neofunction:entity/skill/boss/rubra_void/ink_put
$execute rotated 66 0 positioned ^ ^0.4 ^$(rr) run particle minecraft:squid_ink ~ ~ ~ 0.4 0.1 0.4 0.02 3 force @a[distance=..96]
$execute rotated 88 0 positioned ^ ^ ^$(rr) run function neofunction:entity/skill/boss/rubra_void/ink_put
$execute rotated 88 0 positioned ^ ^0.4 ^$(rr) run particle minecraft:squid_ink ~ ~ ~ 0.4 0.1 0.4 0.02 3 force @a[distance=..96]
$execute rotated 110 0 positioned ^ ^ ^$(rr) run function neofunction:entity/skill/boss/rubra_void/ink_put
$execute rotated 110 0 positioned ^ ^0.4 ^$(rr) run particle minecraft:squid_ink ~ ~ ~ 0.4 0.1 0.4 0.02 3 force @a[distance=..96]
$execute rotated 132 0 positioned ^ ^ ^$(rr) run function neofunction:entity/skill/boss/rubra_void/ink_put
$execute rotated 132 0 positioned ^ ^0.4 ^$(rr) run particle minecraft:squid_ink ~ ~ ~ 0.4 0.1 0.4 0.02 3 force @a[distance=..96]
$execute rotated 154 0 positioned ^ ^ ^$(rr) run function neofunction:entity/skill/boss/rubra_void/ink_put
$execute rotated 154 0 positioned ^ ^0.4 ^$(rr) run particle minecraft:squid_ink ~ ~ ~ 0.4 0.1 0.4 0.02 3 force @a[distance=..96]
$execute rotated 176 0 positioned ^ ^ ^$(rr) run function neofunction:entity/skill/boss/rubra_void/ink_put
$execute rotated 176 0 positioned ^ ^0.4 ^$(rr) run particle minecraft:squid_ink ~ ~ ~ 0.4 0.1 0.4 0.02 3 force @a[distance=..96]
$execute rotated 198 0 positioned ^ ^ ^$(rr) run function neofunction:entity/skill/boss/rubra_void/ink_put
$execute rotated 198 0 positioned ^ ^0.4 ^$(rr) run particle minecraft:squid_ink ~ ~ ~ 0.4 0.1 0.4 0.02 3 force @a[distance=..96]
$execute rotated 220 0 positioned ^ ^ ^$(rr) run function neofunction:entity/skill/boss/rubra_void/ink_put
$execute rotated 220 0 positioned ^ ^0.4 ^$(rr) run particle minecraft:squid_ink ~ ~ ~ 0.4 0.1 0.4 0.02 3 force @a[distance=..96]
$execute rotated 242 0 positioned ^ ^ ^$(rr) run function neofunction:entity/skill/boss/rubra_void/ink_put
$execute rotated 242 0 positioned ^ ^0.4 ^$(rr) run particle minecraft:squid_ink ~ ~ ~ 0.4 0.1 0.4 0.02 3 force @a[distance=..96]
$execute rotated 264 0 positioned ^ ^ ^$(rr) run function neofunction:entity/skill/boss/rubra_void/ink_put
$execute rotated 264 0 positioned ^ ^0.4 ^$(rr) run particle minecraft:squid_ink ~ ~ ~ 0.4 0.1 0.4 0.02 3 force @a[distance=..96]
$execute rotated 286 0 positioned ^ ^ ^$(rr) run function neofunction:entity/skill/boss/rubra_void/ink_put
$execute rotated 286 0 positioned ^ ^0.4 ^$(rr) run particle minecraft:squid_ink ~ ~ ~ 0.4 0.1 0.4 0.02 3 force @a[distance=..96]
$execute rotated 308 0 positioned ^ ^ ^$(rr) run function neofunction:entity/skill/boss/rubra_void/ink_put
$execute rotated 308 0 positioned ^ ^0.4 ^$(rr) run particle minecraft:squid_ink ~ ~ ~ 0.4 0.1 0.4 0.02 3 force @a[distance=..96]
$execute rotated 330 0 positioned ^ ^ ^$(rr) run function neofunction:entity/skill/boss/rubra_void/ink_put
$execute rotated 330 0 positioned ^ ^0.4 ^$(rr) run particle minecraft:squid_ink ~ ~ ~ 0.4 0.1 0.4 0.02 3 force @a[distance=..96]
$execute as @a[distance=..$(rr).9,gamemode=!spectator,tag=!rubra_riphit,predicate=neofunction:rubra/on_ground] unless entity @s[distance=..$(rr)] run function neofunction:entity/skill/boss/rubra_void/ripple_hurt
