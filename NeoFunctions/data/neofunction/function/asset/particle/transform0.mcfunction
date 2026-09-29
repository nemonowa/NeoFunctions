# 命名：transform0
# 説明：レベルアップ演出
# >/function neofunction:system/1_detection
# =/function neofunction:asset/particle/transform0


# 内容
playsound minecraft:item.spyglass.use master @a[distance=..4] ~ ~ ~ 1.5 1.33

title @a[distance=..4] title ""
title @a[distance=..4] subtitle [{"text":"||","color":"yellow","bold":true,"italic":false,"obfuscated":true},{"text":"||","color":"aqua"},{"text":"||","color":"green"},{"text":" transforming ","color":"#FEEEED","obfuscated":false},{"text":"||","color":"green"},{"text":"||","color":"aqua"},{"text":"||","color":"yellow"}]