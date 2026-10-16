# 命名：reward_clear
# 説明：ボスを倒したあとの報酬（宝箱 4 つ・帰還ゲート）を消す（章をやり直すとき）。ゲートは床より上を空気に戻す
# 実行条件：どこでも（ボス部屋のチャンクが読み込まれていること）
# >/function neofunction:system/world/ceresta/rubra/d2/reward_build
# >/function neofunction:system/world/ceresta/rubra/d2/setup_in
# =/function neofunction:system/world/ceresta/rubra/d2/reward_clear

# 内容
execute in neodimension:ceresta_festa run setblock 950 40 3155 minecraft:air
execute in neodimension:ceresta_festa run setblock 948 40 3156 minecraft:air
execute in neodimension:ceresta_festa run setblock 952 40 3156 minecraft:air
execute in neodimension:ceresta_festa run setblock 950 40 3157 minecraft:air
execute in neodimension:ceresta_festa run fill 948 40 3134 952 45 3138 minecraft:air
execute in neodimension:ceresta_festa positioned 950 40 3155 run kill @e[type=item,distance=..10]
