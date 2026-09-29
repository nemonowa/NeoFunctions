# 命名：cdweapon
# 説明：追加効果CD終了時通知
# >/function neofunction:system/adv/clock/30s
# >/function neofunction:system/adv/clock/60s
# =/function neofunction:asset/tellraw/cdweapon


# 内容
title @s actionbar {"text":"スペルアイテム：READY","color":"light_purple","bold":true,"italic":false}
playsound block.note_block.bell record @s ~ ~ ~ 1.0 2.0