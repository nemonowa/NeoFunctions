# 命名：ink_put
# 説明：【追加：2026-10-09 ルブラ編】その場に黒い水を 1 マス（空気で、下が固いブロックのときだけ）。乾くまでの目印（rubra_ink0）を置く
# 実行条件：実行位置 置く所
# >/function neofunction:entity/skill/boss/rubra_void/ink_tick
# >/function neofunction:entity/skill/boss/rubra_void/rain_hit
# >/function neofunction:entity/skill/boss/rubra_void/pillar_hit
# =/function neofunction:entity/skill/boss/rubra_void/ink_put

# 内容
execute align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ minecraft:air run return 0
execute align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-1 ~ #minecraft:replaceable run return 0
execute align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ minecraft:black_carpet
execute align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["rubra_fin","rubra_ink","rubra_ink0"]}
