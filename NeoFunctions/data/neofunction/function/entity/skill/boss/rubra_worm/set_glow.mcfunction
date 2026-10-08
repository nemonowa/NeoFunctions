# 命名：set_glow
# 説明：【追加：2026-10-08 ルブラ編】光る節を決め直す：頭に近い方から glow 個（ミラの光のあいだは 12 個すべて）が赤く光り、攻撃が通る（タグ rubra_hot）
# >/function neofunction:entity/skill/boss/rubra_worm/ate
# >/function neofunction:entity/skill/boss/rubra_worm/flash
# =/function neofunction:entity/skill/boss/rubra_worm/set_glow

# 内容
execute store result score #rubra_g temp run data get storage neofunction:rubra worm.glow
execute if data storage neofunction:rubra worm{flash:1b} run scoreboard players set #rubra_g temp 12
execute if score #rubra_g temp matches 1.. run function neofunction:entity/skill/boss/rubra_worm/seg_hot {i:1}
execute unless score #rubra_g temp matches 1.. run function neofunction:entity/skill/boss/rubra_worm/seg_cold {i:1}
execute if score #rubra_g temp matches 2.. run function neofunction:entity/skill/boss/rubra_worm/seg_hot {i:2}
execute unless score #rubra_g temp matches 2.. run function neofunction:entity/skill/boss/rubra_worm/seg_cold {i:2}
execute if score #rubra_g temp matches 3.. run function neofunction:entity/skill/boss/rubra_worm/seg_hot {i:3}
execute unless score #rubra_g temp matches 3.. run function neofunction:entity/skill/boss/rubra_worm/seg_cold {i:3}
execute if score #rubra_g temp matches 4.. run function neofunction:entity/skill/boss/rubra_worm/seg_hot {i:4}
execute unless score #rubra_g temp matches 4.. run function neofunction:entity/skill/boss/rubra_worm/seg_cold {i:4}
execute if score #rubra_g temp matches 5.. run function neofunction:entity/skill/boss/rubra_worm/seg_hot {i:5}
execute unless score #rubra_g temp matches 5.. run function neofunction:entity/skill/boss/rubra_worm/seg_cold {i:5}
execute if score #rubra_g temp matches 6.. run function neofunction:entity/skill/boss/rubra_worm/seg_hot {i:6}
execute unless score #rubra_g temp matches 6.. run function neofunction:entity/skill/boss/rubra_worm/seg_cold {i:6}
execute if score #rubra_g temp matches 7.. run function neofunction:entity/skill/boss/rubra_worm/seg_hot {i:7}
execute unless score #rubra_g temp matches 7.. run function neofunction:entity/skill/boss/rubra_worm/seg_cold {i:7}
execute if score #rubra_g temp matches 8.. run function neofunction:entity/skill/boss/rubra_worm/seg_hot {i:8}
execute unless score #rubra_g temp matches 8.. run function neofunction:entity/skill/boss/rubra_worm/seg_cold {i:8}
execute if score #rubra_g temp matches 9.. run function neofunction:entity/skill/boss/rubra_worm/seg_hot {i:9}
execute unless score #rubra_g temp matches 9.. run function neofunction:entity/skill/boss/rubra_worm/seg_cold {i:9}
execute if score #rubra_g temp matches 10.. run function neofunction:entity/skill/boss/rubra_worm/seg_hot {i:10}
execute unless score #rubra_g temp matches 10.. run function neofunction:entity/skill/boss/rubra_worm/seg_cold {i:10}
execute if score #rubra_g temp matches 11.. run function neofunction:entity/skill/boss/rubra_worm/seg_hot {i:11}
execute unless score #rubra_g temp matches 11.. run function neofunction:entity/skill/boss/rubra_worm/seg_cold {i:11}
execute if score #rubra_g temp matches 12.. run function neofunction:entity/skill/boss/rubra_worm/seg_hot {i:12}
execute unless score #rubra_g temp matches 12.. run function neofunction:entity/skill/boss/rubra_worm/seg_cold {i:12}
