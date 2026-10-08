# 命名：crumble
# 説明：【追加：2026-10-08 ルブラ編】i 番目の節が黒い砂になって崩れる。赤い光に触れた砂は消える
# 実行条件：引数 i
# >/function neofunction:entity/skill/boss/rubra_worm/dying
# =/function neofunction:entity/skill/boss/rubra_worm/crumble

# 内容
$execute as @e[type=block_display,tag=rubra_seg$(i)] at @s run particle minecraft:falling_dust{block_state:"minecraft:black_concrete"} ~ ~1 ~ 0.8 0.8 0.8 0 40 normal
$execute as @e[type=block_display,tag=rubra_seg$(i)] at @s run particle minecraft:smoke ~ ~1 ~ 0.6 0.6 0.6 0.02 15 normal
$execute as @e[type=block_display,tag=rubra_seg$(i)] at @s run playsound minecraft:block.sand.break hostile @a[distance=..48] ~ ~ ~ 1.5 0.5
$kill @e[type=block_display,tag=rubra_seg$(i)]
