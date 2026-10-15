# 命名：reward_clear
# 説明：ソウルイーターを倒したあとの報酬（宝箱 4 つ・帰還ゲート）を消す（第一章をやり直すとき）。ゲートは床（y-41）より上を空気に戻す
# 実行条件：どこでも（大空洞のチャンクが読み込まれていること）
# >/function neofunction:system/rubra/d1/reward_build
# >/function neofunction:system/rubra/d1/setup_in
# =/function neofunction:system/rubra/d1/reward_clear

# 内容
execute in neodimension:ceresta_festa run kill @e[tag=rubra_d1reward]
execute in neodimension:ceresta_festa run fill 820 -40 3250 824 -40 3252 minecraft:air replace minecraft:chest
execute in neodimension:ceresta_festa run fill 825 -40 3251 829 -35 3255 minecraft:air
execute in neodimension:ceresta_festa positioned 822 -40 3251 run kill @e[type=item,distance=..8]
