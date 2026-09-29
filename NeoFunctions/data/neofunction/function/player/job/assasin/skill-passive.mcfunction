# 命名：暗殺士官【ASSASIN】
# 説明：いつかあとりびゅーとにしたいらしい
# >/function neofunction:system/clock/1_second
# =/function neofunction:player/job/assasin/skill-passive


effect give @s[scores={sneak_time=60..}] minecraft:invisibility 2 9 true
effect give @s[scores={LVL=0..,sneak_time=100..}] minecraft:speed 1 0 true
effect give @s[scores={LVL=40..,sneak_time=100..}] minecraft:speed 1 1 true
effect give @s[scores={LVL=80..,sneak_time=100..}] minecraft:speed 1 2 true
effect give @s[scores={LVL=0..,sneak_time=100..}] minecraft:strength 1 0
effect give @s[scores={LVL=40..,sneak_time=100..}] minecraft:strength 1 1
effect give @s[scores={LVL=80..,sneak_time=100..}] minecraft:strength 1 2
effect give @s[scores={LVL=0..,sneak_time=100..}] minecraft:resistance 1 0
effect give @s[scores={LVL=40..,sneak_time=100..}] minecraft:resistance 1 1
effect give @s[scores={LVL=80..,sneak_time=100..}] minecraft:resistance 1 2
effect give @s[advancements={neoadvancement:neoskill/255=true},scores={LVL=0..,sneak_time=100..}] minecraft:regeneration 2 0
effect give @s[advancements={neoadvancement:neoskill/255=true},scores={LVL=40..,sneak_time=100..}] minecraft:regeneration 2 1
effect give @s[advancements={neoadvancement:neoskill/255=true},scores={LVL=80..,sneak_time=100..}] minecraft:regeneration 2 2
