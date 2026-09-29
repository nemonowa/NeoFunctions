# 命名：familiar
# 説明：プレイヤーが0.5秒以上スニークしながら使い魔を殴るとSPを半分取り戻せる
# 内容
# >/advancement neofunction:player_hurt_entity/familiar
# =/function neofunction:system/adv/player_hurt_entity/familiar

execute if entity @s[advancements={neoadvancement:neoskill/230=false}] run return 0

execute if entity @e[tag=hit,tag=wolfFamiliar] run title @s actionbar [{"text":"SP回復 +10｜現在値：","color":"dark_aqua","bold":true},{"score":{"name":"@s","objective":"SP"}}]
execute if entity @e[tag=hit,tag=wolfFamiliar] run scoreboard players add @s SP 10

execute if entity @e[tag=hit,tag=snowGolemFamiliar] run title @s actionbar [{"text":"SP回復 +10｜現在値：","color":"dark_aqua","bold":true},{"score":{"name":"@s","objective":"SP"}}]
execute if entity @e[tag=hit,tag=snowGolemFamiliar] run scoreboard players add @s SP 10

execute if entity @e[tag=hit,tag=ironGolemFamiliar] run title @s actionbar [{"text":"SP回復 +20｜現在値：","color":"dark_aqua","bold":true},{"score":{"name":"@s","objective":"SP"}}]
execute if entity @e[tag=hit,tag=ironGolemFamiliar] run scoreboard players add @s SP 20

function neofunction:asset/particle/.mp_heal
execute as @e[tag=hit,tag=familiar] run data merge entity @s {PortalCooldown:1}
