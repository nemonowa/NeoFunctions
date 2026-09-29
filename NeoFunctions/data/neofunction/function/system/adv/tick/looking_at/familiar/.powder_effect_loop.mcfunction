# 命名：.powder_effect_loop
# 説明：familiar_powder.effects(配列)の先頭要素を1件処理しては削除、を空になるまで繰り返す再帰関数
# =/function neofunction:system/adv/tick/looking_at/familiar/.powder_effect_loop

#先頭要素がなければ終了
execute unless data storage neofunction:temp familiar_powder.effects[0] run return 0

#先頭要素をcurrent_effectとして取り出す(マクロの引数はリストを直接渡せないため)
data modify storage neofunction:temp familiar_powder.current_effect set from storage neofunction:temp familiar_powder.effects[0]

#対象に付与
function neofunction:system/adv/tick/looking_at/familiar/.powder_effect_give with storage neofunction:temp familiar_powder

#処理済みの先頭要素を削除して次へ
data remove storage neofunction:temp familiar_powder.effects[0]
function neofunction:system/adv/tick/looking_at/familiar/.powder_effect_loop
