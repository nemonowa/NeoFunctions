# 命名：seg_hot
# 説明：i 番目の節を光らせる（マグマブロック・赤い発光）。当たり判定に rubra_hot を付けて攻撃を通す
# 実行条件：引数 i
# >/function neofunction:entity/skill/boss/rubra_worm/set_glow
# =/function neofunction:entity/skill/boss/rubra_worm/seg_hot

# 内容
$execute as @e[type=block_display,tag=rubra_seg$(i),tag=!rubra_hot] run data merge entity @s {block_state:{id:"minecraft:magma_block"},Glowing:1b,glow_color_override:16729156,brightness:{block:15,sky:15}}
$tag @e[tag=rubra_seg$(i)] add rubra_hot
$tag @e[tag=rubra_hit$(i)] add rubra_hot
