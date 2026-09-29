# 命名：1018-3
# 説明：システム
# 説明：進捗達成時
# >
# =/function neofunction:system/adv/inventory_changed/1018-3



## 内容
# すでにあった場合に備えて一回消す
attribute @s minecraft:armor modifier remove neofunction:00000000-0000-0000-0000-000000001756

# マクロで小麦カウントを受け取ってそれでアトリビュート追加
$attribute @s minecraft:armor modifier add neofunction:00000000-0000-0000-0000-000000001756 $(value) add_value


#装備着てないこと検知用のタグ
tag @s add wheatarmor
#いったんチェック用
#tellraw @s {"storage":"neofunction:wheatcount","nbt":"value"}
#ストレージは片づけましょう。
data remove storage neofunction:wheatcount value



#一瞬頭を保存する用のアイテムディスプレイ
#summon item_display ~ ~ ~ {Tags:["del","player_name"],view_range:0}
#item replace entity @e[type=minecraft:item_display,distance=..1,limit=1,sort=nearest] container.0 from entity @s armor.head
#item replace entity @s armor.head with air
#item replace entity @s armor.head from entity @e[type=minecraft:item_display,distance=..1,limit=1,sort=nearest] container.0
#kill @e[tag=player_name,distance=..1,type=minecraft:item_display,limit=1,sort=nearest]