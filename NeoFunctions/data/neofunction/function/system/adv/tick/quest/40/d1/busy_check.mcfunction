# 命名：busy_check
# 説明：会話中の印 busy が 2 分（2400 tick）より長く残っていたら外す（途中で全員いなくなったときの詰み防止）
# >/function neofunction:system/adv/tick/quest/40/d1/zone
# >/function neofunction:system/adv/player_interacted_with_entity/villager/902
# >/function neofunction:system/adv/player_interacted_with_entity/villager/903
# =/function neofunction:system/adv/tick/quest/40/d1/busy_check

# 内容
execute unless data storage neofunction:rubra {busy:1b} run return 0
execute store result score #rubra_t temp run time query gametime
execute store result score #rubra_t2 temp run data get storage neofunction:rubra busy_t
scoreboard players operation #rubra_t temp -= #rubra_t2 temp
execute if score #rubra_t temp matches 2400.. run data remove storage neofunction:rubra busy
