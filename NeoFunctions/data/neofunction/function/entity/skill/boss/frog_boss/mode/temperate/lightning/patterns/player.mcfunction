# 命名：player
# 説明：（説明未記載）
# >/function neofunction:entity/skill/boss/frog_boss/tick
# =/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/player

execute at @a[distance=..31,predicate=neofunction:player] if entity @s[tag=!FrogBossHalf] run summon marker ~ -53.5 ~ {Tags:["AttackPoint"],data:{Timer:30}}
execute at @a[distance=..31,predicate=neofunction:player] if entity @s[tag=FrogBossHalf] run summon marker ~ -51.5 ~ {Tags:["AttackPoint"],data:{Timer:30}}
execute as @a[distance=..31] at @s run playsound block.anvil.land hostile @s ~ ~ ~ 0.2 0.5