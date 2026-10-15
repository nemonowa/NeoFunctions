# 命名：pull_start
# 説明：零点崩壊の始まり：2 秒の予告（渦が回る）のあと、4 秒のあいだ、近くの人を渦の芯へ引き寄せる（pull_tick）
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/attack
# >/function neofunction:entity/skill/boss/rubra_void/attack3
# =/function neofunction:entity/skill/boss/rubra_void/pull_start

# 内容
data modify storage neofunction:rubra fin.pull set value 120
playsound minecraft:block.portal.trigger hostile @a[distance=..128] ~ ~ ~ 3 0.5
title @a[distance=..128] actionbar {"text":"渦が、ぐるりと回った――零点崩壊！ 遮る柱の陰へ！","color":"#B19CD9","bold":true}
