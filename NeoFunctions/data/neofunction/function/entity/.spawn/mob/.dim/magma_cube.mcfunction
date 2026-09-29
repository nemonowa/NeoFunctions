# 命名：magma_cube
# 説明：マグマキューブ置き換え（夜以外の場合。天候別を優先抽選し、外れたら通常版(77)にフォールバック。最大1体のみ）
# >/function neofunction:entity/.spawn/mob/.dim/ceresta/ceresta
# =/function neofunction:entity/.spawn/mob/.dim/ceresta/magma_cube

execute if predicate neofunction:weather_check/sunny if predicate neofunction:random_chance/25 run return run function neofunction:asset/summon/639
execute if predicate neofunction:weather_check/rainy if predicate neofunction:random_chance/25 run return run function neofunction:asset/summon/640
execute if predicate neofunction:weather_check/thunder if predicate neofunction:random_chance/25 run return run function neofunction:asset/summon/641

function neofunction:asset/summon/77
