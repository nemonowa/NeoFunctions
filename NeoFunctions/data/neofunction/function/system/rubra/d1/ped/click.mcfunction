# 命名：click
# 説明：星の台を右クリックしたとき。空なら欠片を置き、置いてあれば光の向きを変える
# 実行条件：実行者 プレイヤー。引数 p＝n・w・s（北・西・南の台）
# >/function neofunction:system/adv/player_interacted_with_entity/rubra_click
# =/function neofunction:system/rubra/d1/ped/click

# 内容
execute if data storage neofunction:rubra d1{solved:1b} run return run tellraw @s {"text":"光の道は、もう一本につながっている。","color":"gray","italic":true}
$execute if data storage neofunction:rubra d1.ped{$(p):0} run return run function neofunction:system/rubra/d1/ped/place {p:"$(p)"}
$function neofunction:system/rubra/d1/ped/turn {p:"$(p)"}
