# 命名：.neo
# 説明：システム
# 説明：進捗達成時（snowball
# >/function neofunction:using_item/carrot_on_a_stick
# =/function neofunction:system/adv/player_interacted_with_entity/interaction/.neo

## 内容
# execute as @s run say neofunction:system/adv/player_interacted_with_entity/interaction！
execute at @s as @e[type=minecraft:interaction,sort=nearest,limit=1,gamemode=creative] run say 「フッ...人間が...」
#execute at @s as @e[type=minecraft:interaction,sort=nearest,limit=1] on vehicle run say 「フッ...人間が...」


# execute on vehicle run tag @s add del


## 再使用のために進捗剥奪
advancement revoke @s only neofunction:player_interacted_with_entity/interaction