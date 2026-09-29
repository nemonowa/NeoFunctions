# 命名：inportal
# 説明：スカルリメインのポータルに入った時
# > エンターインブロックのエンドゲートウェイ汎用処理から
# =/function neofunction:system/world/ceresta/skull/inportal

# 内容

#防具保護を起動（念のため）
function neofunction:player/armor/lock/set
#TP
execute in neodimension:ceresta_festa run tp @s 406 41 1031 90 0

#ボスがいないか100回目のチェック
execute if entity @e[nbt={DeathLootTable:"neofunction:asset/summon/738"}] run return 0
execute if entity @e[nbt={DeathLootTable:"neofunction:asset/summon/604"}] run return 0

#ボスを召喚
schedule function neofunction:system/world/ceresta/skull/inportal-1 1s replace
#トライデント消す
execute in neodimension:ceresta_festa positioned 398 42 1031 run kill @e[type=minecraft:trident,distance=..25]
#入口消す
execute in neodimension:ceresta_festa run setblock 398 42 1031 minecraft:air
execute in neodimension:ceresta_festa run setblock 398 43 1031 minecraft:air

