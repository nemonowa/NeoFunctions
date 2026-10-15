# 命名：edge
# 説明：縁の黒い海：舞台の真ん中から 22 マスより外にいる人が、少し削られる
# 説明：エリートチャレンジ（fin.elite）ではダメージ 1.5 倍
# 実行条件：実行者・実行位置 縁の人
# >/function neofunction:entity/skill/boss/rubra_void/form3
# =/function neofunction:entity/skill/boss/rubra_void/edge

# 内容
execute unless data storage neofunction:rubra fin{elite:1b} run damage @s 2 minecraft:magic
execute if data storage neofunction:rubra fin{elite:1b} run damage @s 3 minecraft:magic
title @s actionbar {"text":"縁から黒い海が満ちてくる――舞台の真ん中へ！","color":"#6E7390"}
