# 命名：501
# 説明：トリガー
# >/function neofunction:system/trigger/code
# =/function neofunction:system/trigger/code/501



## 内容：エリートチャレンジ：サラザールを起動

execute if entity @s[tag=temp232] run return 0
#既に存在している場合召喚できない、
execute if entity @e[nbt={DeathLootTable:"neofunction:asset/summon/738"}] run return run tellraw @s "他のボスとの戦闘が進行中です。すべての戦闘が終了してから再度挑戦してください。"
execute if entity @e[nbt={DeathLootTable:"neofunction:asset/summon/604"}] run return run tellraw @s "他のボスとの戦闘が進行中です。すべての戦闘が終了してから再度挑戦してください。"

effect give @a[distance=..32] minecraft:darkness 30 127 true

tag @a[distance=..16] add temp232

schedule function neofunction:asset/tellraw/738 4s
schedule function neofunction:asset/tellraw/738-1 8s
schedule function neofunction:asset/tellraw/738-2 12s
schedule function neofunction:asset/tellraw/738-3 16s
schedule function neofunction:asset/tellraw/738-4 20s

schedule function neofunction:entity/skill/boss/sarazaru/elitestart 24s