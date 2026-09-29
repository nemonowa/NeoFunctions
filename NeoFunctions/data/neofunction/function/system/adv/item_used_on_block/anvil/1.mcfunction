# 命名：1
# 説明：GUIエンティティを特定条件下で召喚
# 説明：# 内容
# >/function neofunction:system/adv/item_used_on_block/anvil/0
# =/function neofunction:system/adv/item_used_on_block/anvil/1

# 重なっている場合削除
kill @e[tag=fsanvil,distance=..3]
kill @e[tag=fsanvilset,distance=..3]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{GuiItem:1b}}}}]

# FusionAnvilを召喚
execute align xyz positioned ~0.5 ~-0.95 ~0.5 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["fsanvilset"],Passengers:[{id:"minecraft:chest_minecart",Invulnerable:1b,CustomDisplayTile:1b,Tags:["fsanvil"],CustomName:[{"text":"FusionAnvil"},{"text":"test","font":"fsanviltest","color":"#CBCBFF"}],DisplayState:{id:"minecraft:air"}},{id:"minecraft:armor_stand",NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["fsanvilset"],Passengers:[{id:"minecraft:interaction",width:1.1f,height:-0.5f,Tags:["fsanvilset"]}]}]}

execute as @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=fsanvil] run function neofunction:player/inventory/csgui/init {item:'minecraft:pink_stained_glass_pane{GuiItem:1b}'}

# GUIを消す
summon minecraft:marker ~ ~ ~ {Tags:[ReplFS]}
execute if block ~ ~ ~ minecraft:anvil[facing=north] run setblock ~ ~ ~ minecraft:end_portal_frame[facing=north,eye=true]
execute if block ~ ~ ~ minecraft:anvil[facing=east] run setblock ~ ~ ~ minecraft:end_portal_frame[facing=east,eye=true]
execute if block ~ ~ ~ minecraft:anvil[facing=south] run setblock ~ ~ ~ minecraft:end_portal_frame[facing=south,eye=true]
execute if block ~ ~ ~ minecraft:anvil[facing=west] run setblock ~ ~ ~ minecraft:end_portal_frame[facing=west,eye=true]
schedule function neofunction:system/adv/item_used_on_block/anvil/2 2t




