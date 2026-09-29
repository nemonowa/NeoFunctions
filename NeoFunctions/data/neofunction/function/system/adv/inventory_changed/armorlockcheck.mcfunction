# 命名：包帯
# 説明：ハート♡x4つ分の回復
# >
# =/function neofunction:system/adv/inventory_changed/armorlockcheck


## 内容
#64m以内にボスがいるなら処理をぬける
execute if entity @e[tag=boss,distance=..64] run return 0
#自分がアーマーセット中のみ処理を抜ける
execute if entity @s[tag=temparmor] run return 1
#上記条件、にそぐわない場合のみ実行される。
execute if entity @s[tag=froggame] run return 0
function neofunction:player/armor/lock/unset