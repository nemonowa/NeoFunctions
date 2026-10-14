# 命名：heart_check
# 説明：【追加：2026-10-13 ルブラ編】黒い心臓 1 つ：星還しの矢（タグ rubra_sbow）が 2.2 マスまで来たら砕ける（ほかの矢は弾かれる）
# 実行条件：実行者 黒い心臓、実行位置 心臓の真ん中
# >/function neofunction:entity/skill/boss/rubra_void/form3
# =/function neofunction:entity/skill/boss/rubra_void/heart_check

# 内容
execute unless entity @e[type=#minecraft:arrows,tag=rubra_sbow,distance=..2.2] run return 0
kill @e[type=#minecraft:arrows,tag=rubra_sbow,distance=..2.6]
function neofunction:entity/skill/boss/rubra_void/heart_break
