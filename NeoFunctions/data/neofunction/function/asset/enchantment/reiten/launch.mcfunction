# 命名：launch
# 説明：射出。吸い込まれていたものを、上向きの勢いを付けてばらばらの方向へ飛ばす。生き物には 2000 ダメージ（衝撃波は当てない）
# 実行条件：吸い込まれていたもの（neo.nk_pulled）
# >/function neofunction:asset/enchantment/reiten/burst
# =/function neofunction:asset/enchantment/reiten/launch


# 内容
tag @s remove neo.nk_pulled
tag @s add neo.nk_hit
function neofunction:asset/enchantment/core/damage {d:2000}
execute store result entity @s Motion[0] double 0.01 run random value -450..450
execute store result entity @s Motion[2] double 0.01 run random value -450..450
execute store result entity @s Motion[1] double 0.01 run random value 120..220
