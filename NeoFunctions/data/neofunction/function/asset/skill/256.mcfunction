# 命名：256
# 説明：幻脚【ファントム・ステップ】
#        リワーク：発動時に奇襲体勢を付与する（踏み込みからの一撃が確定奇襲になる）
# >スキル発動時
# =/function neofunction:asset/skill/256


# 内容：レベルに応じて効果レベル調整
execute as @s[scores={LVL=10..}] run effect give @s minecraft:speed 60 1
execute as @s[scores={LVL=20..}] run effect give @s minecraft:speed 60 2
execute as @s[scores={LVL=30..}] run effect give @s minecraft:speed 60 3
execute as @s[scores={LVL=40..}] run effect give @s minecraft:speed 60 4
execute as @s[scores={LVL=50..}] run effect give @s minecraft:speed 60 5
execute as @s[scores={LVL=60..}] run effect give @s minecraft:speed 60 6
execute as @s[scores={LVL=70..}] run effect give @s minecraft:speed 60 7
execute as @s[scores={LVL=80..}] run effect give @s minecraft:speed 60 8
execute as @s[scores={LVL=90..}] run effect give @s minecraft:speed 60 9

# レベルに応じて効果レベル調整
execute as @s[scores={LVL=10..}] run effect give @s minecraft:jump_boost 60 1
execute as @s[scores={LVL=20..}] run effect give @s minecraft:jump_boost 60 2
execute as @s[scores={LVL=30..}] run effect give @s minecraft:jump_boost 60 3
execute as @s[scores={LVL=40..}] run effect give @s minecraft:jump_boost 60 4
execute as @s[scores={LVL=50..}] run effect give @s minecraft:jump_boost 60 5
execute as @s[scores={LVL=60..}] run effect give @s minecraft:jump_boost 60 6
execute as @s[scores={LVL=70..}] run effect give @s minecraft:jump_boost 60 7
execute as @s[scores={LVL=80..}] run effect give @s minecraft:jump_boost 60 8
execute as @s[scores={LVL=90..}] run effect give @s minecraft:jump_boost 60 9

# リワーク：発動時に奇襲体勢を付与
function neofunction:asset/skill/ambush_give

scoreboard players remove @s SP 20
