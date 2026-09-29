# 命名：rootmist
# 説明：10s周期で50%の確率でプレイヤーに鈍足3を8秒間付与
# >/function neofunction:clock/10_second
# =/function neofunction:entity/skill/rootmist


effect give @s minecraft:glowing 1 0 true
tellraw @a[distance=..16] [{"text":"* "},{"selector":"@s"},{"text":" は"},{"text":"ルートミスト","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"16m以内のプレイヤーに短時間の鈍足を付与。"}]}},{"text":"を唱えた！"}]
execute as @s at @s run effect give @a[distance=..16] slowness 8 2 true
playsound block.hanging_roots.place record @a[distance=..16] ~ ~ ~ 2.0 0.5
particle minecraft:soul ~ ~ ~ 0.2 0.2 0.2 0.1 30 force @a[distance=..16]