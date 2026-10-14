# 命名：pillar_hit
# 説明：【追加：2026-10-14 ルブラ編】柱にぶつかった：1 回目・2 回目はひびが入る（タグ rubra_wph1・rubra_wph2）、3 回目で崩れ落ちる（目印も消える。崩れた柱は使えない）
# 実行条件：実行者・実行位置 柱の目印（marker、タグ rubra_wpillar、床の高さ）
# >/function neofunction:entity/skill/boss/rubra_worm/crash
# =/function neofunction:entity/skill/boss/rubra_worm/pillar_hit

# 内容
execute if entity @s[tag=rubra_wph2] run return run function neofunction:entity/skill/boss/rubra_worm/pillar_fall
execute if entity @s[tag=rubra_wph1] run tag @s add rubra_wph2
execute if entity @s[tag=rubra_wph2] run fill ~-1 -41 ~-1 ~1 -16 ~1 minecraft:cracked_deepslate_bricks replace minecraft:deepslate_bricks
execute unless entity @s[tag=rubra_wph2] run tag @s add rubra_wph1
execute unless entity @s[tag=rubra_wph2] run fill ~-1 -38 ~-1 ~1 -30 ~1 minecraft:cracked_deepslate_bricks replace minecraft:deepslate_bricks
playsound minecraft:block.deepslate_bricks.break block @a[distance=..64] ~ ~ ~ 2 0.5
particle minecraft:block{block_state:"minecraft:deepslate_bricks"} ~ ~4 ~ 1 4 1 0 80 normal
