# 命名：3s
# 説明：SP回復処理
# 実行条件：execute unless score nosp temp matches -1 as @a[scores={food=10..}] run
# >/function neofunction:system/clock/3_second
# =/function neofunction:player/sp/regene/3s


# 内容
execute as @a[scores={food=..9},predicate=neofunction:random_chance/10] run title @s[gamemode=!creative] actionbar {"text":"お腹が空いてSPが回復しない...","color":"gray","bold":true}

execute as @a[scores={food=10..}] run execute if score @s SP < @s SPmax run function neofunction:player/sp/add/1p






