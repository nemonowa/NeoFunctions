# 命名：potion_custom
# 説明：手持ちポーションがカスタム効果リスト(tag.custom_potion_effects)を持つ場合の適用処理
#       一時ストレージにリストをコピーし、1件ずつ/effect giveで適用しては先頭を消す再帰処理
# >/function neofunction:system/adv/tick/looking_at/familiar/potion
# =/function neofunction:system/adv/tick/looking_at/familiar/potion_custom

data modify storage neofunction:temp familiar_potion.effects set from entity @s SelectedItem.components."minecraft:potion_contents".custom_effects

function neofunction:system/adv/tick/looking_at/familiar/.potion_custom_loop
