# 命名：loop
# 説明：【追加：2026-10-14 ルブラ編】結晶の封の毎 tick の処理（schedule で自分を呼び続ける）：引き剥がし、叩かれた結晶、三つ目の結晶を回す、三つ目のそばの影（守り石の光の中でだけ斬れる）。結晶のそばに誰もいなくなり、引き剥がしもしていなければ止まる
# 実行条件：サーバー（schedule）
# >/function neofunction:system/rubra/d3/xtal/check
# >/function neofunction:system/rubra/d3/xtal/click
# =/function neofunction:system/rubra/d3/xtal/loop

# 内容
execute as @a[tag=rubra_xpuller,limit=1] at @s run function neofunction:system/rubra/d3/xtal/pull_tick
execute as @e[type=interaction,tag=rubra_xtalhit] if data entity @s attack at @s run function neofunction:system/rubra/d3/xtal/hit
execute as @e[type=marker,tag=rubra_xrot,limit=1] at @s if entity @a[distance=..14] run function neofunction:system/rubra/d3/xtal/orbit
execute as @e[type=marker,tag=rubra_xrot,limit=1] at @s as @e[type=vex,tag=rubra_shadow,distance=..16] at @s run function neofunction:system/rubra/d3/shadow_light
execute as @e[type=marker,tag=rubra_xseal] at @s if entity @a[distance=..12] run return run schedule function neofunction:system/rubra/d3/xtal/loop 1t replace
execute if entity @a[tag=rubra_xpuller] run schedule function neofunction:system/rubra/d3/xtal/loop 1t replace
