# 命名：prologueceles
# 説明：導入描写 プロローグ
# 説明：tag=prologue 呼び出し
# 説明：実行者は@sにしろ
# >/function neofunction:system/trigger/code/10
# =/function neofunction:asset/event/prologueceles


# 内容
execute as @s[advancements={neoadvancement:nexus/root/1/0=false}] run return run title @s actionbar [{"text":"注：先にチュートリアルを完了してください！"}]
stopsound @s
advancement revoke @s only neofunction:tick/entity_scores/prog/12
advancement revoke @s only neofunction:tick/entity_scores/prog/13
advancement revoke @s only neofunction:tick/entity_scores/prog/14
advancement revoke @s only neofunction:tick/entity_scores/prog/15
advancement revoke @s only neofunction:tick/entity_scores/prog/16

scoreboard players set @s ceres 1
scoreboard players set @s ceres_timer 0

effect give @s minecraft:blindness 40 0 true
execute in neodimension:ceresta_festa run tp @s 837.51 33.00 1027.55 1080.48 89.90
