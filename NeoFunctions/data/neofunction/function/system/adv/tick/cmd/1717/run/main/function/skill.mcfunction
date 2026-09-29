# 命名：skill
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/cmd/1717/run/main/function/.neo
# =/function neofunction:system/adv/tick/cmd/1717/run/main/function/skill

data modify storage neofunction:item/1717 Run.Skill.Value set from storage neofunction:item/1717 Run.Arguments[0]
execute if data storage neofunction:item/1717 Run.Skill{Value:1} run scoreboard players operation @s on = @s slotR
execute if data storage neofunction:item/1717 Run.Skill{Value:2} run scoreboard players operation @s on = @s slotG
execute if data storage neofunction:item/1717 Run.Skill{Value:3} run scoreboard players operation @s on = @s slotB
execute if data storage neofunction:item/1717 Run.Skill{Value:4} run scoreboard players operation @s on = @s slotR
execute if data storage neofunction:item/1717 Run.Skill{Value:5} run scoreboard players operation @s on = @s slotG
execute if data storage neofunction:item/1717 Run.Skill{Value:6} run scoreboard players operation @s on = @s slotB

execute if data storage neofunction:item/1717 Run.Skill{Value:4} facing entity @e[tag=enemy,limit=1,sort=nearest,distance=..32] feet run tp @s ~ ~ ~ ~ ~
execute if data storage neofunction:item/1717 Run.Skill{Value:5} facing entity @e[tag=enemy,limit=1,sort=nearest,distance=..32] feet run tp @s ~ ~ ~ ~ ~
execute if data storage neofunction:item/1717 Run.Skill{Value:6} facing entity @e[tag=enemy,limit=1,sort=nearest,distance=..32] feet run tp @s ~ ~ ~ ~ ~

function neofunction:system/trigger/on
