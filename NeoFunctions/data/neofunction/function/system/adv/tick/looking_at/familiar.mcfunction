# 命名：familiar
# 説明：シフトしながらfamiliarタグの個体をちょうど3秒(sneak_time=60)見た瞬間に発火する。
#       次回もまた使えるよう、貰った進捗はすぐに取り消す(sneak_time自体は完全一致なので
#       同一しゃがみ継続中に連続発火することはない)。
# >/advancement neofunction:tick/looking_at/familiar
# =/function neofunction:system/adv/tick/looking_at/familiar

#他のスニークアイテムを持っていた場合処理を終える
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":{floats:[994.0f]}}}}] run return 0
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":{floats:[996.0f]}}}}] run return 0


#個体特定(将来の単体強化機能用の下地。ちょうど見ていた1体だけにlookedタグを付与する)
#※advancement revokeより前に実行すること(UUIDビット照合はcriteriaの真偽を読むため)
function neofunction:system/adv/tick/looking_at/.get_entity {Name:"familiar"}

#手持ちアイテム(ポーション/パウダー系)を判定して効果を付与
function neofunction:system/adv/tick/looking_at/familiar/item_use

tag @e[tag=lookedGroup] remove lookedGroup
tag @e[tag=looked] remove looked
#scoreboard players reset @s sneak_time
advancement revoke @s only neofunction:tick/looking_at/familiar