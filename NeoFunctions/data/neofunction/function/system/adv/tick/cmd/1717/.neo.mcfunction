# 命名：.neo
# 説明：（説明未記載）
# >adv
# =/function neofunction:system/adv/tick/cmd/1717/.neo


execute if score @s sneak_time matches 1..19 run title @s[scores={sneak_time=1..}] actionbar [{"text":"エディター表示：","color":"dark_aqua","bold":true},{"score":{"name":"@s","objective":"sneak_time"}},{"text":"/"},{"text":"20 tick"}]
execute if score @s sneak_time matches 20 run function neofunction:system/adv/tick/cmd/1717/editor/view
execute if score @s sneak_time matches 20 run scoreboard players set @s sneak_time 0