# 命名：puddle
# 説明：黒い水溜まり：狙う人の足もとに黒い水（黒いカーペット、5×5）を広げる。上に立つと削られる（tick/dungeon/rubra2/black）。番人を洗うと流れる（第 1 段階）
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_keeper/attack
# =/function neofunction:entity/skill/boss/rubra_keeper/puddle

# 内容
execute as @a[distance=..24,gamemode=!spectator,sort=random,limit=1] at @s run function neofunction:entity/skill/boss/rubra_keeper/puddle_at
playsound minecraft:entity.drowned.shoot hostile @a[distance=..48] ~ ~3 ~ 1.5 0.5
