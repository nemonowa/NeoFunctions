# 命名：ward_tick（247-1）
# 説明：247（状態異常耐性オーラ）の状態異常クリア処理。247本体からLVL帯に応じて20tおきに複数回scheduleされる
# 説明：（本体側で必要回数ぶんappendしているため、このファイル自身は再scheduleしない・ループしない）。
# 説明：対象は ward247 タグ持ちの@a全員。glowing（命中マーカー）は他スキルの判定を壊すためクリア対象に含めない。
# >
# =/function neofunction:asset/skill/247-1


execute as @a[tag=ward247] run effect clear @s minecraft:poison
execute as @a[tag=ward247] run effect clear @s minecraft:wither
execute as @a[tag=ward247] run effect clear @s minecraft:weakness
execute as @a[tag=ward247] run effect clear @s minecraft:mining_fatigue
execute as @a[tag=ward247] run effect clear @s minecraft:slowness
execute as @a[tag=ward247] run effect clear @s minecraft:nausea
execute as @a[tag=ward247] run effect clear @s minecraft:blindness
execute as @a[tag=ward247] run effect clear @s minecraft:hunger
execute as @a[tag=ward247] run effect clear @s minecraft:unluck
execute as @a[tag=ward247] run effect clear @s minecraft:levitation
execute as @a[tag=ward247] run effect clear @s minecraft:darkness

execute as @a[tag=ward247] at @s run particle minecraft:end_rod ~ ~1 ~ 0.3 0.5 0.3 0.01 5 force
