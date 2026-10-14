# 命名：elite_buff
# 説明：【追加：2026-10-14 ルブラ編】エリートチャレンジの取り巻き：黒い滴りを速く、強く、硬くする（一体に一度、タグ rubra_ebuf）
# 実行条件：実行者 黒い滴り（zombie、タグ rubra_fin_drip）
# >/function neofunction:entity/skill/boss/rubra_void/elite_tick
# =/function neofunction:entity/skill/boss/rubra_void/elite_buff

# 内容
tag @s add rubra_ebuf
effect give @s minecraft:speed infinite 1 true
effect give @s minecraft:strength infinite 1 true
effect give @s minecraft:resistance infinite 1 true
effect give @s minecraft:health_boost infinite 2 true
effect give @s minecraft:instant_damage 1 0 true
