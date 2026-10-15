# 命名：pull_near
# 説明：引き剥がしている人が結晶 i から 4 マス以内なら #xt_near temp を 1 に。結晶に青い光の粒
# 実行条件：引数 i（d3.xt.pull）
# >/function neofunction:system/rubra/d3/xtal/pull_tick
# =/function neofunction:system/rubra/d3/xtal/pull_near

# 内容
$execute as @e[type=item_display,tag=rubra_xtal_$(i),limit=1] at @s if entity @a[tag=rubra_xpuller,distance=..4] run scoreboard players set #xt_near temp 1
$execute as @e[type=item_display,tag=rubra_xtal_$(i),limit=1] at @s run particle minecraft:dust{color:[0.35,0.6,1.0],scale:1.0} ~ ~ ~ 0.2 0.2 0.2 0 4 normal
