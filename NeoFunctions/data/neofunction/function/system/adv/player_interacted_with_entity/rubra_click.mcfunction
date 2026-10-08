# 命名：rubra_click
# 説明：【追加：2026-10-08 ルブラ編】ルブラ編のクリックできる所（interaction、タグ rubra_click）を右クリックしたときの振り分け
# 説明：星の台（rubra_ped_n・w・s）、星の台の間の鐘（rubra_bell）、ガラン・ルーの札の窪み（rubra_alcove）、欠片の選択（rubra_bury・rubra_take）
# 実行条件：実行者 プレイヤー
# >/advancement neofunction:player_interacted_with_entity/rubra_click
# =/function neofunction:system/adv/player_interacted_with_entity/rubra_click

## 再使用のために進捗剥奪
advancement revoke @s only neofunction:player_interacted_with_entity/rubra_click

## 内容
execute as @e[type=interaction,tag=rubra_click,distance=..8] if data entity @s interaction run tag @s add rubra_clicked
execute as @e[type=interaction,tag=rubra_clicked] run data remove entity @s interaction
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_ped_n] run function neofunction:system/rubra/d1/ped/click {p:"n"}
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_ped_w] run function neofunction:system/rubra/d1/ped/click {p:"w"}
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_ped_s] run function neofunction:system/rubra/d1/ped/click {p:"s"}
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_bell] run function neofunction:system/rubra/d1/ped/ring
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_alcove] run function neofunction:system/rubra/d1/alcove
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_bury] run function neofunction:system/adv/tick/quest/40/d1/choice_bury
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_take] run function neofunction:system/adv/tick/quest/40/d1/choice_take
tag @e[type=interaction,tag=rubra_clicked] remove rubra_clicked
