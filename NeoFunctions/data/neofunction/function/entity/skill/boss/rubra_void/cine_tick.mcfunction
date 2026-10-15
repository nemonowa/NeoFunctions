# 命名：cine_tick
# 説明：とどめのあとの空の演出（毎 tick、見張り役から）：経験値の玉を消し、光の粒を見せ、言葉を出す。220 tick（11 秒）で結末へ（end_a・end_b・burst_c）
# 実行条件：実行者・実行位置 見張り役（rubra_void_ctl）
# >/function neofunction:entity/skill/boss/rubra_void/ctl_tick
# =/function neofunction:entity/skill/boss/rubra_void/cine_tick

# 内容
execute in neodimension:ceresta_festa positioned 866 150 3226 run kill @e[type=experience_orb,dx=110,dy=120,dz=112]
execute store result score #rv_ct temp run data get storage neofunction:rubra fin.cine.t
scoreboard players add #rv_ct temp 1
execute store result storage neofunction:rubra fin.cine.t int 1 run scoreboard players get #rv_ct temp
# 星を射た（A・C）：赤い星が昇っていく光
execute unless data storage neofunction:rubra fin.cine{e:"b"} run particle minecraft:end_rod ~ ~ ~ 2 2 2 0.08 12 force @a[distance=..200]
execute unless data storage neofunction:rubra fin.cine{e:"b"} run particle minecraft:dust{color:[1.0,0.45,0.35],scale:2.5} ~ ~3 ~ 3 4 3 0 10 force @a[distance=..200]
execute unless data storage neofunction:rubra fin.cine{e:"b"} as @e[type=block_display,tag=rubra_void_star] at @s run tp @s ~ ~0.25 ~
# 零を射た（B）：黒い水が星を包んで沈む
execute if data storage neofunction:rubra fin.cine{e:"b"} run particle minecraft:squid_ink ~ ~ ~ 3 3 3 0.05 25 force @a[distance=..200]
execute if data storage neofunction:rubra fin.cine{e:"b"} as @e[type=block_display,tag=rubra_void_star] at @s run tp @s ~ ~-0.2 ~
execute if score #rv_ct temp matches 60 unless data storage neofunction:rubra fin.cine{e:"b"} run tellraw @a[distance=..200] {"text":"――あ。……あったかい。","color":"#FF7B7B","italic":true}
execute if score #rv_ct temp matches 60 if data storage neofunction:rubra fin.cine{e:"b"} run tellraw @a[distance=..200] {"text":"ほどけた鎖が、ひとつ、またひとつ、星に巻きつき直す音がした。","color":"gray","italic":true}
execute if score #rv_ct temp matches 140 unless data storage neofunction:rubra fin.cine{e:"b"} run tellraw @a[distance=..200] {"text":"赤い星は黒い海を振りほどき、夜空の高みへ――そして、すべての色をあわせたような光になって、弾けた。","color":"#FFD27A","italic":true}
execute if score #rv_ct temp matches 140 if data storage neofunction:rubra fin.cine{e:"b"} run tellraw @a[distance=..200] {"text":"赤い光は、黒い水とともに、ゆっくりと鉢の底へ沈んでいった。","color":"gray","italic":true}
execute if score #rv_ct temp matches 190 run tellraw @a[distance=..200] {"text":"夜空の光がおさまっていく。足もとの白い舞台だけが、星の名残のように、静かに夜空に浮かんでいた。","color":"#B8D8FF","italic":true}
execute if score #rv_ct temp matches 220.. run return run function neofunction:entity/skill/boss/rubra_void/cine_end
