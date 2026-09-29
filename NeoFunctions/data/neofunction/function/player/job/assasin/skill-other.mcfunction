# 命名：渇命丸
# 説明：暗殺士官が忍具を召喚するスキル（SP30消費）
# >/function neofunction:system/adv/consume_item/133
# =/function neofunction:player/job/assasin/skill-other


# 演出
playsound minecraft:entity.player.burp master @a[distance=..16] ~ ~ ~ 1 0.8 0
particle minecraft:item{item:"minecraft:mushroom_stew"} ~ ~1.35 ~ 0.01 0.1 0.01 0.05 30 force @a[distance=..64]
execute if entity @s[predicate=neofunction:random_chance/5] run tellraw @a [{"text":"<","color":"white","bold":true,"italic":false},{"selector":"@s"},{"text":">「...NINJA!!」"}]
execute if entity @s[predicate=neofunction:random_chance/5] run tellraw @a [{"text":"<","color":"white","bold":true,"italic":false},{"selector":"@s"},{"text":">「...ニンニン。」"}]
execute if entity @s[predicate=neofunction:random_chance/5] run tellraw @a [{"text":"<","color":"white","bold":true,"italic":false},{"selector":"@s"},{"text":">「...忍者☆飯タイム」"}]


# 忍者が食べたら確率でおかわり
execute if entity @s[advancements={neoadvancement:neoskill/250=false}] run return run tellraw @a [{"text":"<","color":"white","bold":true,"italic":false},{"selector":"@s"},{"text":">「...忍者にあらずんば無料にあらず！」"}]
execute if entity @s[advancements={neoadvancement:neoskill/250=true},predicate=neofunction:random_chance/50] run return run title @s actionbar {"text":"忍者なら無料！","color":"white","bold":true}

loot give @s loot neofunction:item/133

# 
effect give @s minecraft:saturation 1 0 true
# function neofunction:asset/effect/clear-debuff

# 消費SP
scoreboard players remove @s SP 30









