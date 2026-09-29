# 命名：sansa3
# 説明：三叉弓追尾
# 説明：tag=sansa
# >/function neofunction:entity/skill/.neo
# =/function neofunction:entity/skill/sansa3


#内容
execute if entity @s[nbt={inGround:1b}] run kill @s

execute if entity @s[nbt={inGround:0b}] at @s run particle minecraft:composter ~ ~ ~ 0.2 0.2 0.2 0 10 normal
