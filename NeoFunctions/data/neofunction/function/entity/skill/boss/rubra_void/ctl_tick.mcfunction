# 命名：ctl_tick
# 説明：【追加：2026-10-09 ルブラ編】見張り役（目印 rubra_void_ctl）の毎 tick：戦いの途中なのに本体がいない（強い一撃で、形態の切り替えより先に倒れた）とき、その形態を終えたことにして本体を出し直す（第 1→体力 700、第 2→300、第 3→30）。夜も保つ
# 実行条件：実行者・実行位置 見張り役
# >/function neofunction:entity/skill/boss/.neo
# =/function neofunction:entity/skill/boss/rubra_void/ctl_tick

# 内容
execute if data storage neofunction:rubra fin{state:"cine"} run return run function neofunction:entity/skill/boss/rubra_void/cine_tick
execute unless data storage neofunction:rubra fin{state:"fight"} run return 0
# （時間は止めてあるので、ここでは戻さない）
execute if entity @e[type=ghast,tag=rubra_void] run return 0
execute as @e[type=marker,tag=rubra_sky_boss,limit=1] at @s run function neofunction:asset/summon/913
data modify storage neofunction:rubra fin merge value {c:0,pull:0,rw:0,drag:0}
kill @e[type=marker,tag=rubra_fin_mark]
execute if data storage neofunction:rubra fin{form:1} as @e[type=ghast,tag=rubra_void] run data modify entity @s Health set value 700.0f
execute if data storage neofunction:rubra fin{form:2} as @e[type=ghast,tag=rubra_void] run data modify entity @s Health set value 300.0f
execute if data storage neofunction:rubra fin{form:3} as @e[type=ghast,tag=rubra_void] run data modify entity @s Health set value 30.0f
execute if data storage neofunction:rubra fin{form:2} as @e[type=ghast,tag=rubra_void] run data modify entity @s CustomName set value {"text":"ヴォイド・ゼロ","color":"#6A5ACD","bold":true,"italic":false}
execute if data storage neofunction:rubra fin{form:3} as @e[type=ghast,tag=rubra_void] run data modify entity @s CustomName set value {"text":"ヴォイド・ゼロ","color":"#6A5ACD","bold":true,"italic":false}
execute as @e[type=marker,tag=rubra_sky_boss,limit=1] at @s run tp @e[type=block_display,tag=rubra_void_part] ~ ~ ~
tellraw @a[distance=..128] {"text":"強烈な一撃が、渦を吹き飛ばした――けれど、黒い水はまた寄り集まっていく。","color":"#B19CD9","italic":true}
