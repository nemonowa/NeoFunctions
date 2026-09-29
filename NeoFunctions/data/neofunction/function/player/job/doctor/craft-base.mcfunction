# 命名：doctor/craft-base
# 説明：起点ポーションを1個、アイテムエンティティとして召喚し足元に設置する。
# 説明：giveによる即時インベントリ挿入をやめ、ドロップ形式に変更。
# 説明：戦闘的な直接効果は持たせず、代わりに高レベルのGlowing（発光）を内包させることで、
# 説明：命中した対象を可視化する「マーカー」として機能させる（バニラのglowing effectをそのまま流用）。
# 説明：LVLブラケットによる強さのスケーリングは行わない（マーカーとしての役割自体は熟練度で変化しないため）。
# 説明：CustomModelData:1776でこのポーションを判定できる（投げた後も引き継がれることを確認済み）。
# 説明：CustomPotionEffectsのNBT形式は1.20.5未満（items系execute非対応サーバー）を想定した記法。
# >
# =/function neofunction:player/job/doctor/craft-base

summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:splash_potion",count:16,components:{"minecraft:custom_name":{"text":"起点ポーション","color":"light_purple","italic":false},"minecraft:lore":[{"text":"それ自体に戦闘効果はない触媒","color":"gray","italic":false},{"text":"命中した対象を10秒間発光させる","color":"gray","italic":false}],"minecraft:custom_model_data":{floats:[1776.0f]},"minecraft:potion_contents":{custom_effects:[{id:"minecraft:glowing",amplifier:105b,duration:200}]},"minecraft:custom_data":{rare:["st"]}}},Motion:[0.0,0.25,0.0],PickupDelay:10s,Tags:["item1776"]}
summon item_display ~ ~ ~ {Tags:["resolve","del"]}
loot replace entity @e[tag=resolve,limit=1,sort=nearest] container.0 loot neofunction:item/1776
data modify entity @e[tag=item1776,limit=1,sort=nearest] Item set from entity @e[tag=resolve,limit=1,sort=nearest] item
data modify entity @e[tag=item1776,limit=1,sort=nearest] Item.count set value 16b
kill @e[tag=resolve]
tag @e[tag=item1776] remove item1776