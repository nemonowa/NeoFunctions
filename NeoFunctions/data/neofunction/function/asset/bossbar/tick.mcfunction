# =/function neofunction:asset/bossbar/tick
# >/function neofunction:asset/bossbar/.neo

# 存在チェック
$execute store success storage neofunction:bossbar Check byte 1 run bossbar get neofunction:boss/$(ID) value
# 無かったらshowを叩く
execute if data storage neofunction:bossbar {Check:0b} run function neofunction:asset/bossbar/show
# バーの調整
$execute store result bossbar neofunction:boss/$(ID) max run scoreboard players get @s HPmax
$execute store result bossbar neofunction:boss/$(ID) value run scoreboard players get @s HP
$execute at @s run bossbar set neofunction:boss/$(ID) players @a[distance=..64]