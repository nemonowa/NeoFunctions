# 命名：.potion_custom_loop
# 説明：familiar_potion.effects の先頭要素を1件処理しては削除、を空になるまで繰り返す再帰関数
# =/function neofunction:system/adv/tick/looking_at/familiar/.potion_custom_loop

#先頭要素がなければ終了
execute unless data storage neofunction:temp familiar_potion.effects[0] run return 0

#amplifierが省略されている場合は0を補完
execute unless data storage neofunction:temp familiar_potion.effects[0].amplifier run data modify storage neofunction:temp familiar_potion.effects[0].amplifier set value 0

#duration(tick)を秒に変換して補完(0以下にならないよう1秒を下限にする)
execute store result score #dur temp run data get storage neofunction:temp familiar_potion.effects[0].duration 0.05
execute if score #dur temp matches ..0 run scoreboard players set #dur temp 1
execute store result storage neofunction:temp familiar_potion.effects[0].duration_sec int 1 run scoreboard players get #dur temp

#先頭要素を対象に適用
function neofunction:system/adv/tick/looking_at/familiar/.potion_custom_apply with storage neofunction:temp familiar_potion.effects[0]

#処理済みの先頭要素を削除して次へ
data remove storage neofunction:temp familiar_potion.effects[0]
function neofunction:system/adv/tick/looking_at/familiar/.potion_custom_loop
