# 命名：familiar
# 説明：Familiarタグ付きモブへのインタラクト共通処理
# >/advancement neofunction:player_interacted_with_entity/familiar
# =/function neofunction:system/adv/player_interacted_with_entity/familiar

#インタラクトした個体を特定(候補はtag=mob,tag=UUIDchecked全体からUUID絞り込み)
#function neofunction:system/adv/player_interacted_with_entity/.get_entity {Name:"familiar"}

#familiarタグ(実際に運用されているタグ名は小文字)を持たない個体が紛れ込んでいた場合は対象から除外(安全策)
#tag @e[tag=interacted,tag=!familiar] remove interacted

#手に持ったアイテムが(飲用の)ポーションの場合、効果を対象に付与して消費
#※スプラッシュ/残留ポーションはアイテムIDが異なるため対象外
#execute if entity @s[nbt={SelectedItem:{id:"minecraft:potion"}}] run function #neofunction:system/adv/player_interacted_with_entity/familiar/potion

#tag @e[tag=interacted] remove interacted
