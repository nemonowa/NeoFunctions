# 命名：band
# 説明：【追加：2026-10-14 ルブラ編】第二段階の黒い水の帯（番人のまわり、中心から 6〜13 マスの八角形）を敷く。phase2 と、洗われたあと黒が戻るとき（reblack）
# 実行条件：どこでも（番人の間のチャンクが読み込まれていること）
# >/function neofunction:entity/skill/boss/rubra_keeper/phase2
# >/function neofunction:entity/skill/boss/rubra_keeper/reblack
# =/function neofunction:entity/skill/boss/rubra_keeper/band

# 内容
execute as @e[type=marker,tag=rubra_keeper_center,limit=1] at @s run fill ~-13 ~ ~-9 ~13 ~ ~9 minecraft:black_carpet replace minecraft:air
execute as @e[type=marker,tag=rubra_keeper_center,limit=1] at @s run fill ~-9 ~ ~-13 ~9 ~ ~13 minecraft:black_carpet replace minecraft:air
execute as @e[type=marker,tag=rubra_keeper_center,limit=1] at @s run fill ~-5 ~ ~-5 ~5 ~ ~5 minecraft:air replace minecraft:black_carpet
