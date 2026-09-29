# 命名：土の鎧
# 説明：
# >/function neofunction:clock/30_second
# =/function neofunction:entity/skill/dirtshield


# 説明：30周期でdirtshieldタグを持つエンティティは土の鎧をまとう（耐性2と発光）
effect give @e[nbt={Tags:["dirtshield"]}] minecraft:resistance infinite 2 false
effect give @e[nbt={Tags:["dirtshield"]}] minecraft:glowing infinite 0 true

execute as @e[tag=dirtshield] at @s run playsound block.rooted_dirt.step master @a[distance=..32] ~ ~ ~ 0.5 0.5 0.01