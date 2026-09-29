# 命名：.neo
# 説明：ディメンション変更時
# >/function neofunction:changed_dimension/.neo
# =/function neofunction:system/adv/changed_dimension/.neo

# 次元転移時テンプレート
playsound minecraft:block.portal.travel master @s ~ ~ ~ 0.05 1 0.05
particle dust_color_transition{from_color:[0,0,0],to_color:[1,1,1],scale:1.5} ~ ~ ~ 1 2 1 0 99 force @s
#title @s title {"text":"新ディメンション到達","bold":true,"italic":false}
#title @s subtitle {"nbt":"Dimension","entity":"@s","bold":true,"italic":false,"underlined":true}

# 特定ディメンション要固有処理オーバーライド
execute as @s[nbt={Dimension:"neodimension:nexus"}] run function neofunction:system/adv/changed_dimension/dimension/nexus
execute as @s[nbt={Dimension:"minecraft:overworld"}] run function neofunction:system/adv/changed_dimension/dimension/overworld
execute as @s[nbt={Dimension:"minecraft:the_nether"}] run function neofunction:system/adv/changed_dimension/dimension/the_nether
execute as @s[nbt={Dimension:"minecraft:the_end"}] run function neofunction:system/adv/changed_dimension/dimension/the_end
execute as @s[nbt={Dimension:"neodimension:ceresta_festa"}] run function neofunction:system/adv/changed_dimension/dimension/ceresta_festa
execute as @s[nbt={Dimension:"neodimension:sun_sand_box"}] run function neofunction:system/adv/changed_dimension/dimension/sun_sand_box
execute as @s[nbt={Dimension:"neodimension:vol_val_rose"}] run function neofunction:system/adv/changed_dimension/dimension/vol_val_rose
execute as @s[nbt={Dimension:"neodimension:asgard"}] run function neofunction:system/adv/changed_dimension/dimension/asgard
execute as @s[nbt={Dimension:"neodimension:nostal_machina"}] run function neofunction:system/adv/changed_dimension/dimension/nostal_machina
execute as @s[nbt={Dimension:"neodimension:daydream_nightmare"}] run function neofunction:system/adv/changed_dimension/dimension/daydream_nightmare
execute as @s[nbt={Dimension:"neodimension:tachyon_field"}] run function neofunction:system/adv/changed_dimension/dimension/tachyon_field
execute as @s[nbt={Dimension:"neodimension:rainbow_heaven"}] run function neofunction:system/adv/changed_dimension/dimension/rainbow_heaven
execute as @s[nbt={Dimension:"neodimension:the_yomi"}] run function neofunction:system/adv/changed_dimension/dimension/the_yomi
execute as @s[nbt={Dimension:"neodimension:lumin_vitin"}] run function neofunction:system/adv/changed_dimension/dimension/lumin_vitin
execute as @s[nbt={Dimension:"neodimension:plantopia"}] run function neofunction:system/adv/changed_dimension/dimension/plantopia

# もし該当のディメンションにいないなら対応する見た目用進捗を剥奪
advancement revoke @s through neoadvancement:ceresta-archive/root

# ↑とりあえず剥奪して進捗自身が再展開とかそうだろうか？←追記：そうするよ
advancement revoke @s through neoadvancement:anchor/root/0

# 再使用のために自身の進捗を剥奪
advancement revoke @s only neofunction:changed_dimension/.neo

