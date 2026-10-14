# 命名：pillars_restore
# 説明：【追加：2026-10-14 ルブラ編】大空洞の柱 5 本を元に戻す（ひびを直し、崩れた所を埋める）。目印（rubra_wpillar）も置き直す。戦いを始めるたびに
# 実行条件：セレスタ次元（大空洞のチャンクが読み込まれていること）
# >/function neofunction:system/adv/tick/quest/40/d1/boss_start
# =/function neofunction:entity/skill/boss/rubra_worm/pillars_restore

# 内容
fill 818 -41 3279 820 -14 3281 minecraft:deepslate_bricks replace minecraft:air
fill 818 -41 3279 820 -14 3281 minecraft:deepslate_bricks replace minecraft:cracked_deepslate_bricks
fill 818 -39 3279 820 -39 3281 minecraft:red_terracotta
fill 818 -34 3279 820 -34 3281 minecraft:red_terracotta
fill 818 -29 3279 820 -29 3281 minecraft:red_terracotta
fill 818 -24 3279 820 -24 3281 minecraft:red_terracotta
fill 818 -19 3279 820 -19 3281 minecraft:red_terracotta
fill 818 -14 3279 820 -14 3281 minecraft:red_terracotta
fill 804 -41 3279 806 -14 3281 minecraft:deepslate_bricks replace minecraft:air
fill 804 -41 3279 806 -14 3281 minecraft:deepslate_bricks replace minecraft:cracked_deepslate_bricks
fill 804 -39 3279 806 -39 3281 minecraft:red_terracotta
fill 804 -34 3279 806 -34 3281 minecraft:red_terracotta
fill 804 -29 3279 806 -29 3281 minecraft:red_terracotta
fill 804 -24 3279 806 -24 3281 minecraft:red_terracotta
fill 804 -19 3279 806 -19 3281 minecraft:red_terracotta
fill 804 -14 3279 806 -14 3281 minecraft:red_terracotta
fill 797 -41 3267 799 -14 3269 minecraft:deepslate_bricks replace minecraft:air
fill 797 -41 3267 799 -14 3269 minecraft:deepslate_bricks replace minecraft:cracked_deepslate_bricks
fill 797 -39 3267 799 -39 3269 minecraft:red_terracotta
fill 797 -34 3267 799 -34 3269 minecraft:red_terracotta
fill 797 -29 3267 799 -29 3269 minecraft:red_terracotta
fill 797 -24 3267 799 -24 3269 minecraft:red_terracotta
fill 797 -19 3267 799 -19 3269 minecraft:red_terracotta
fill 797 -14 3267 799 -14 3269 minecraft:red_terracotta
fill 804 -41 3255 806 -14 3257 minecraft:deepslate_bricks replace minecraft:air
fill 804 -41 3255 806 -14 3257 minecraft:deepslate_bricks replace minecraft:cracked_deepslate_bricks
fill 804 -39 3255 806 -39 3257 minecraft:red_terracotta
fill 804 -34 3255 806 -34 3257 minecraft:red_terracotta
fill 804 -29 3255 806 -29 3257 minecraft:red_terracotta
fill 804 -24 3255 806 -24 3257 minecraft:red_terracotta
fill 804 -19 3255 806 -19 3257 minecraft:red_terracotta
fill 804 -14 3255 806 -14 3257 minecraft:red_terracotta
fill 818 -41 3255 820 -14 3257 minecraft:deepslate_bricks replace minecraft:air
fill 818 -41 3255 820 -14 3257 minecraft:deepslate_bricks replace minecraft:cracked_deepslate_bricks
fill 818 -39 3255 820 -39 3257 minecraft:red_terracotta
fill 818 -34 3255 820 -34 3257 minecraft:red_terracotta
fill 818 -29 3255 820 -29 3257 minecraft:red_terracotta
fill 818 -24 3255 820 -24 3257 minecraft:red_terracotta
fill 818 -19 3255 820 -19 3257 minecraft:red_terracotta
fill 818 -14 3255 820 -14 3257 minecraft:red_terracotta
kill @e[type=marker,tag=rubra_wpillar]
summon marker 819.5 -40 3280.5 {Tags:["rubra_d1","rubra_wpillar","rubra_wp1"]}
summon marker 805.5 -40 3280.5 {Tags:["rubra_d1","rubra_wpillar","rubra_wp2"]}
summon marker 798.5 -40 3268.5 {Tags:["rubra_d1","rubra_wpillar","rubra_wp3"]}
summon marker 805.5 -40 3256.5 {Tags:["rubra_d1","rubra_wpillar","rubra_wp4"]}
summon marker 819.5 -40 3256.5 {Tags:["rubra_d1","rubra_wpillar","rubra_wp5"]}
function neofunction:system/rubra/d1/hole_lid
