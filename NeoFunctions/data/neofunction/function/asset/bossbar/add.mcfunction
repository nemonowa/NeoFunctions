# 命名：add
# 説明：（説明未記載）
# >/function neofunction:asset/bossbar/show
# =/function neofunction:asset/bossbar/add

$bossbar add neofunction:boss/$(ID) {"selector":"@s"}
$execute at @s run bossbar set neofunction:boss/$(ID) players @a[distance=..64]
$bossbar set neofunction:boss/$(ID) style notched_10
$execute store result bossbar neofunction:boss/$(ID) max run scoreboard players get @s HP
$execute store result bossbar neofunction:boss/$(ID) value run scoreboard players get @s HP
