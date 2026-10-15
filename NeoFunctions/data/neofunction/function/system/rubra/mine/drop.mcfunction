# 命名：drop
# 説明：鉱石のブロック（紅鉄の鉱石＝鉄の原石ブロック、星鉄の鉱石＝泣く黒曜石、星核の鉱石＝ブラックストーン（金入り））のアイテムが現れたとき：
# 説明：投げた人がいない（Thrower なし）・セレスタフェスタ・メサのときだけ、専用の素材（1927〜1929）に置き換える。1 個で落ちたとき（掘ったとき）は、その場所に掘り跡と、また生える印を置く
# 実行条件：実行者 アイテム。引数 m（素材の番号）、b（鉱石のブロック）
# >/function neofunction:entity/.spawn/obj/item/.neo
# =/function neofunction:system/rubra/mine/drop

# 内容
execute if data entity @s Thrower run return 0
execute at @s unless dimension neodimension:ceresta_festa run return 0
execute at @s unless biome ~ ~ ~ #neofunction:mesa_all run return 0
$execute if data entity @s Item{count:1} at @s align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:air run function neofunction:system/rubra/mine/mark {b:"$(b)"}
$loot replace entity @s contents loot neofunction:item/$(m)
