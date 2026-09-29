# 命名：skill25
# 説明：
# >/function neofunction:asset/skill/25
# =/function neofunction:system/adv/entity_hurt_player/skill25


execute if score @s SP matches ..0 run return run title @s actionbar "SPが足りない"
#レベルに応じて回復量変化？（改善の余地あり）

#細かい調整をしないほうがいいらしいので、一旦保留（ぷりんはやりたい）
#execute as @s[scores={LVL=15..}] run scoreboard players add @s heal 4
#execute as @s[scores={LVL=30..}] run scoreboard players add @s heal 8
#execute as @s[scores={LVL=45..}] run scoreboard players add @s heal 12
#execute as @s[scores={LVL=60..}] run scoreboard players add @s heal 16
#execute as @s[scores={LVL=75..}] run scoreboard players add @s heal 20

execute as @s[scores={LVL=15..}] run effect give @s minecraft:instant_health 1 0
execute as @s[scores={LVL=30..}] run effect give @s minecraft:instant_health 1 1
execute as @s[scores={LVL=45..}] run effect give @s minecraft:instant_health 1 2

playsound entity.player.levelup master @s ~ ~ ~ 1 1.88 0
particle heart ~ ~1 ~ 0.5 0.5 0.5 0 5 force

scoreboard players remove @s SP 15