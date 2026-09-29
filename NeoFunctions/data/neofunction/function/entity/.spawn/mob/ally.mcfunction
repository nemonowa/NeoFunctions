# 命名：ally
# 説明：エンティティ処理
# 説明：npc
# >/function neofunction:entity/tick
# =/function neofunction:entity/.spawn/mob/ally


#内容
tag @s add ally

# 村人
execute as @s[type=villager,nbt={DeathLootTable:"neofunction:asset/summon/10"}] run function neofunction:entity/skill/gaming

# 行商人
# execute as @s[type=wandering_trader] run function neofunction:entity/.spawn/mob/wandering_trader/.neo
