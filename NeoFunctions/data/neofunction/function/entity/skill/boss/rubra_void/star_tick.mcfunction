# 命名：star_tick
# 説明：【追加：2026-10-13 ルブラ編】黒星（毎 tick）：小さな黒星は 1 マス、巨大な黒星は 0.6 マス落ちる。舞台の高さ（y201）まで来たら着弾。足もとに予告の輪
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/tick
# =/function neofunction:entity/skill/boss/rubra_void/star_tick

# 内容
execute as @e[type=block_display,tag=rubra_bstar] at @s run function neofunction:entity/skill/boss/rubra_void/star_fall
execute as @e[type=block_display,tag=rubra_bstar_big,limit=1] at @s run function neofunction:entity/skill/boss/rubra_void/star_big_fall
execute unless data storage neofunction:rubra fin{rp:0} run function neofunction:entity/skill/boss/rubra_void/ripple_tick
