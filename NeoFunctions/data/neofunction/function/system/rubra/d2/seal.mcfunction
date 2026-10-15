# 命名：seal
# 説明：黒い水の通路の南の口（番人の間への階段の上、973〜975・52〜56・3153）を黒い水の膜（黒い色付きガラス）でふさぐ。flush で消える。通路の黒いカーペット（黒い水）と、壁画の間の水門の柱の色も戻す
# 実行条件：どこでも（チャンクが読み込まれていること）
# >/function neofunction:system/rubra/d2/setup_in
# >/function neofunction:system/rubra/d2/upgrade_20261014
# =/function neofunction:system/rubra/d2/seal

# 内容
execute in neodimension:ceresta_festa run fill 973 52 3153 975 56 3153 minecraft:black_stained_glass replace minecraft:air
execute in neodimension:ceresta_festa as @e[type=marker,tag=rubra_flush] at @s run fill ~-2 ~ ~-4 ~2 ~ ~4 minecraft:black_carpet replace minecraft:air
execute in neodimension:ceresta_festa run fill 951 53 3161 951 56 3161 minecraft:light_blue_stained_glass replace minecraft:blue_stained_glass
execute in neodimension:ceresta_festa run fill 969 53 3161 969 56 3161 minecraft:light_blue_stained_glass replace minecraft:blue_stained_glass
