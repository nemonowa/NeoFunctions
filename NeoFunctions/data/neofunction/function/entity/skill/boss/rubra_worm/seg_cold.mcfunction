# 命名：seg_cold
# 説明：i 番目の節の光を消す（黒い石に戻す）。攻撃は弾かれる
# 実行条件：引数 i
# >/function neofunction:entity/skill/boss/rubra_worm/set_glow
# =/function neofunction:entity/skill/boss/rubra_worm/seg_cold

# 内容
$execute as @e[type=block_display,tag=rubra_seg$(i),tag=rubra_hot] run data merge entity @s {block_state:{id:"minecraft:blackstone"},Glowing:0b}
$execute as @e[type=block_display,tag=rubra_seg$(i),tag=rubra_hot] run data remove entity @s brightness
$tag @e[tag=rubra_seg$(i)] remove rubra_hot
$tag @e[tag=rubra_hit$(i)] remove rubra_hot
