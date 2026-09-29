# 命名：bugr
# 説明：
# >
# =/function neofunction:system/adv/tick/looking_at/bugr


#内容
title @s title [{"text":"その悍ましさを理解してしまった。","color":"dark_red"}]
trigger kill set 99


## 再使用のために進捗剥奪
advancement revoke @s only neofunction:tick/looking_at/bugr