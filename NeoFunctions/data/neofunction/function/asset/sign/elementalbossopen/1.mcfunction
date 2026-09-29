# 命名：1
# 説明：元素の司教のエリア解放
# >
# =/function neofunction:asset/sign/elementalbossopen/1

# 内容
tellraw @a[distance=..16] {"text":"指定アイテムが入っていません","color":"gray","bold":true,"italic":false,hover_event:{"action":"show_text","value":[{"text":"","color":"gray","bold":true,"italic":false}]}}
execute as @e[distance=..16,type=glow_item_frame,nbt={Item:{}}] run damage @s 1 minecraft:out_of_world