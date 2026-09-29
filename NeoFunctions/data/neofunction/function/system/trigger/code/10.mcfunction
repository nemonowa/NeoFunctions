# 命名：10
# 説明：トリガー：チュートリアル開始処理
# >/function neofunction:system/trigger/code
# >/function neofunction:system/adv/tick/looking_at/cai
# >/trigger code set 10
# =/function neofunction:system/trigger/code/10


# 内容
execute unless dimension neodimension:nexus run return run tellraw @s {"text":"注：NEXUS外では使用不可","color":"red","bold":true,"italic":false}

# 条件分岐

execute as @s[advancements={neoadvancement:ceresta/root=false}] run function neofunction:asset/event/prologueceles



execute as @s[advancements={neoadvancement:ceresta/root=true}] run function neofunction:system/pos/.macro with storage pos:100



