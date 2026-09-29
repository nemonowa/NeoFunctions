# 命名：502
# 説明：トリガー
# >/function neofunction:system/trigger/code
# =/function neofunction:system/trigger/code/502



## 内容：エリートチャレンジ：エキリブリアムを起動

execute if entity @s[tag=temp233] run return 0
#既に存在している場合召喚できない、
execute if entity @e[nbt={DeathLootTable:"neofunction:asset/summon/752"}] run return run tellraw @s "ボスとの戦闘が進行中です。すべての戦闘が終了してから再度挑戦してください。"
execute if entity @e[nbt={DeathLootTable:"neofunction:asset/summon/768"}] run return run tellraw @s "ボスとの戦闘が進行中です。すべての戦闘が終了してから再度挑戦してください。"

effect give @a[distance=..32] minecraft:darkness 30 127 true

tag @a[distance=..16] add temp233

schedule function neofunction:asset/tellraw/768 4s
schedule function neofunction:asset/tellraw/768-1 8s
schedule function neofunction:asset/tellraw/768-2 12s
schedule function neofunction:asset/tellraw/768-3 16s
schedule function neofunction:asset/tellraw/768-4 20s

schedule function neofunction:entity/skill/boss/ekiriburiamu/elite 24s
