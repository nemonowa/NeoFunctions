# 命名：impact
# 説明：炸裂。爆心を地面まで下ろしてから、炸裂の演出へ
# 実行条件：爆心として（#cur に番号）
# >/function neofunction:asset/enchantment/shuuen/tick
# =/function neofunction:asset/enchantment/shuuen/impact


# 内容
scoreboard players set #g neo.nk_tmp 0
function neofunction:asset/enchantment/core/ground
execute at @s run function neofunction:asset/enchantment/shuuen/impact2
