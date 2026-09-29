# 命名：familiar
# 説明：共通interactionディスパッチャから呼ばれる、Familiarタグ付きモブへのインタラクト処理。
#       クリックした個体そのものを厳密特定するのではなく、近傍(8ブロック以内)で最も近い
#       familiarタグ付き個体を対象とする(drink/easterと同じ軽量方式)。
# >/function neofunction:system/adv/player_interacted_with_entity/interaction
# =/function neofunction:system/adv/player_interacted_with_entity/interaction/familiar

#近傍で最も近いfamiliarタグ付き個体をinteracted扱いにする
tag @e[tag=familiar,distance=..8,sort=nearest,limit=1] add interacted

#手に持ったアイテムが(飲用の)ポーションの場合、効果を対象に付与して消費
execute if entity @s[nbt={SelectedItem:{id:"minecraft:potion"}}] run function neofunction:system/adv/player_interacted_with_entity/familiar/potion

tag @e[tag=interacted] remove interacted
