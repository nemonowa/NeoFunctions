# 命名：reward_clear
# 説明：【追加：2026-10-14 ルブラ編】ボスを倒したあとの報酬（宝箱 4 つ・帰還ゲート）を消す（章をやり直すとき）。ゲートは床より上を空気に戻す
# 実行条件：どこでも（ボス部屋のチャンクが読み込まれていること）
# >/function neofunction:system/rubra/d3/reward_build
# >/function neofunction:system/rubra/d3/setup_in
# =/function neofunction:system/rubra/d3/reward_clear

# 内容
execute in neodimension:ceresta_festa run setblock 949 -44 3300 minecraft:air
execute in neodimension:ceresta_festa run setblock 947 -44 3301 minecraft:air
execute in neodimension:ceresta_festa run setblock 951 -44 3301 minecraft:air
execute in neodimension:ceresta_festa run setblock 949 -44 3302 minecraft:air
execute in neodimension:ceresta_festa run fill 947 -44 3283 951 -39 3287 minecraft:air
execute in neodimension:ceresta_festa positioned 949 -44 3300 run kill @e[type=item,distance=..10]
