# 命名：ward_end（247-2）
# 説明：247（状態異常耐性オーラ）の持続時間終了処理。247本体からLVL帯ごとの持続時間の最後に1回だけscheduleされる。
# 説明：状態異常クリアを最後にもう一度行った上で、ward247タグを除去してオーラを終了させる。
# >
# =/function neofunction:asset/skill/247-2


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

execute as @a[tag=ward247] at @s run particle minecraft:end_rod ~ ~1 ~ 0.2 0.3 0.2 0.005 3 force
execute as @a[tag=ward247] run tag @s remove ward247
