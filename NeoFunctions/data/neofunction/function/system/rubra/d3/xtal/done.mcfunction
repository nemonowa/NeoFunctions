# 命名：done
# 説明：【追加：2026-10-14 ルブラ編】結晶 i を引き剥がした：結晶は青い光に包まれて消え、赤いガラスの封が砕けて道が開く。そばの影も消える。ミラがひとこと（1 仕組み、2 叩かれると途切れる・影、3 動いていても）
# 実行条件：引数 i（d3.xt.pull）
# >/function neofunction:system/rubra/d3/xtal/pull_tick
# =/function neofunction:system/rubra/d3/xtal/done

# 内容
$execute as @e[type=item_display,tag=rubra_xtal_$(i)] at @s run particle minecraft:dust{color:[0.35,0.6,1.0],scale:1.6} ~ ~ ~ 0.4 0.4 0.4 0 40 normal
$execute as @e[type=item_display,tag=rubra_xtal_$(i)] at @s run particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.05 20 normal
$execute as @e[type=item_display,tag=rubra_xtal_$(i)] at @s run playsound minecraft:block.amethyst_block.chime player @a[distance=..32] ~ ~ ~ 1.5 1.4
$execute as @e[type=marker,tag=rubra_xseal,tag=rubra_xtal_$(i)] at @s run particle minecraft:block{block_state:"minecraft:red_stained_glass"} ~ ~ ~ 0.3 1 1 0 60 normal
$execute as @e[type=marker,tag=rubra_xseal,tag=rubra_xtal_$(i)] at @s run playsound minecraft:block.glass.break block @a[distance=..32] ~ ~ ~ 1.5 0.8
$execute as @e[type=marker,tag=rubra_xseal,tag=rubra_xtal_$(i)] at @s run fill ~ ~-1 ~-1 ~ ~1 ~1 minecraft:air replace minecraft:red_stained_glass
$execute as @e[type=marker,tag=rubra_xseal,tag=rubra_xtal_$(i)] at @s as @e[type=vex,tag=rubra_shadow,distance=..16] run tag @s add del
$kill @e[type=!marker,tag=rubra_xtal_$(i)]
$kill @e[type=marker,tag=rubra_xrot,tag=rubra_xtal_$(i)]
$data modify storage neofunction:rubra d3.xt.s$(i) set value 1b
tag @a remove rubra_xpuller
data modify storage neofunction:rubra d3.xt.pull set value {i:0,t:0}
$function neofunction:system/rubra/d3/xtal/say_$(i)
