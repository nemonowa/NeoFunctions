# 命名：zombie
# 説明：ゾンビ置き換え
# >/function neofunction:entity/.spawn/mob/.dim/ceresta
# =/function neofunction:entity/.spawn/mob/.dim/ceresta/zombie

#内容
execute if predicate neofunction:random_chance/25 run return run function neofunction:asset/summon/796
execute if predicate neofunction:random_chance/33 run return run function neofunction:asset/summon/797
execute if predicate neofunction:random_chance/50 run return run function neofunction:asset/summon/798

return run function neofunction:asset/summon/799
