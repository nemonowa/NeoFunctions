# 命名：frags
# 説明：4 つの欠片（見た目と当たり判定）を、向きの印のまわり 2.6 マスに 90 度おきに置く（6 つから 4 つに）
# 実行条件：実行者・実行位置 向きの印（marker、タグ rubra_cradle_rot。本体の 1 マス上）
# >/function neofunction:entity/skill/boss/rubra_cradle/tick
# =/function neofunction:entity/skill/boss/rubra_cradle/frags

# 内容
execute rotated ~ 0 positioned ^ ^ ^2.6 run tp @e[type=item_display,tag=rubra_frag1] ~ ~0.5 ~
execute rotated ~ 0 positioned ^ ^ ^2.6 run tp @e[type=interaction,tag=rubra_fraghit1] ~ ~ ~
execute rotated ~90 0 positioned ^ ^ ^2.6 run tp @e[type=item_display,tag=rubra_frag2] ~ ~0.5 ~
execute rotated ~90 0 positioned ^ ^ ^2.6 run tp @e[type=interaction,tag=rubra_fraghit2] ~ ~ ~
execute rotated ~180 0 positioned ^ ^ ^2.6 run tp @e[type=item_display,tag=rubra_frag3] ~ ~0.5 ~
execute rotated ~180 0 positioned ^ ^ ^2.6 run tp @e[type=interaction,tag=rubra_fraghit3] ~ ~ ~
execute rotated ~270 0 positioned ^ ^ ^2.6 run tp @e[type=item_display,tag=rubra_frag4] ~ ~0.5 ~
execute rotated ~270 0 positioned ^ ^ ^2.6 run tp @e[type=interaction,tag=rubra_fraghit4] ~ ~ ~
