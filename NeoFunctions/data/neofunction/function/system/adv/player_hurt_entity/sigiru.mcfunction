# 命名：sigiru
# 説明：シギル持ちMOBを殴った時（共鳴士官）
# >/function neofunction:player_hurt_entity/sigiru
# =/function neofunction:system/adv/player_hurt_entity/sigiru



## 内容

#このSP回復要素は将来的には撤廃or変更方針
#15レベル以上のシギル持ちを殴った時
execute as @e[scores={LVL=15..}] run effect give @s minecraft:regeneration 10 0 true
execute as @e[scores={LVL=15..}] run particle minecraft:heart ~ ~ ~ 0.2 1 0.2 0.1 10 force
#シギル持ちを殴った時共通
scoreboard players add @s SP 5
function neofunction:player/sp/.neo
playsound entity.allay.item_given record @s ~ ~ ~ 0.4 2.0