# 命名：1699
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/entity_scores/horse
# =/function neofunction:system/adv/tick/cmd/1699

particle block{block_state:"minecraft:dirt"} ^ ^ ^2 1 1 1 0 40
playsound block.rooted_dirt.fall neutral @a[distance=..8] ~ ~ ~ 1 0.5
execute on passengers run effect give @s minecraft:resistance 10 1 false
execute on passengers run effect give @s minecraft:glowing 10 0 true
execute on passengers run tag @s add dirtshieldplayer