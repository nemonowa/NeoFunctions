# 命名：skill-other
# 説明：
# >/function neofunction:system/adv/consume_item/133
# =/function neofunction:player/job/shooter/skill-other


# 演出
playsound minecraft:entity.player.burp master @a[distance=..16] ~ ~ ~ 1 0.8 0
particle minecraft:item{item:"minecraft:mushroom_stew"} ~ ~1.35 ~ 0.01 0.1 0.01 0.05 30 force @a[distance=..64]
execute if entity @s[predicate=neofunction:random_chance/5] run tellraw @a [{"text":"<","color":"white","bold":true,"italic":false},{"selector":"@s"},{"text":">「...NINJA!!」"}]
execute if entity @s[predicate=neofunction:random_chance/5] run tellraw @a [{"text":"<","color":"white","bold":true,"italic":false},{"selector":"@s"},{"text":">「...ニンニン。」"}]
execute if entity @s[predicate=neofunction:random_chance/5] run tellraw @a [{"text":"<","color":"white","bold":true,"italic":false},{"selector":"@s"},{"text":">「...忍者☆飯タイム」"}]

# 焼く
item modify entity @s weapon.mainhand neofunction:furnace_smelt

# 消費SP
scoreboard players remove @s SP 10









