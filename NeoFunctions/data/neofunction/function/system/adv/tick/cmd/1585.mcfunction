# 命名：1585
# 説明：
# >/advancement neofunction:tick/cmd/1585
# =/function neofunction:system/adv/tick/cmd/1585

title @s[scores={sneak_time=1..}] actionbar [{"text":"アイテム取り出し：","color":"dark_aqua","bold":true},{"score":{"name":"@s","objective":"sneak_time"}},{"text":"/"},{"text":"20 tick"}]

execute if score @s sneak_time matches 20.. run function neofunction:system/adv/tick/cmd/inf_bundle/.neo {CMD:1422}
execute if score @s sneak_time matches 20.. run scoreboard players set @s sneak_time 0