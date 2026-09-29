# 命名：suncanon1
# 説明：（説明未記載）
# >
# =/function neofunction:entity/skill/suncanon1

me §fは§6§l§n灼陽砲§fを唱えた！
tag @s add NowSunCanon

execute positioned ~ ~2 ~ run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.1 30 force
playsound block.beacon.activate master @a ~ ~ ~ 2 1.5

schedule function neofunction:entity/skill/suncanon2 1s

