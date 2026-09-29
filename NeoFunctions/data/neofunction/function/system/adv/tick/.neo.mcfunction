# 命名：.neo
# 説明：ゲームモード管理
# 実行条件：adventureでない場合m=!2
# >/neofunction:tick/.neo
# =/function neofunction:system/adv/tick/.neo

# 再使用のために進捗剥奪
advancement revoke @s only neofunction:tick/.neo

# 管理者を除外
execute if entity @s[tag=argonaute] run return 0

# 表示用
title @s[tag=!sur] actionbar {"text":"告：サバイバルエリア","color":"green","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"このエリアでは採掘、設置が自由です。"}]}}
tag @s[tag=!sur] add sur

# Dimension
execute at @s if dimension neodimension:nexus run gamemode adventure
execute at @s if dimension neodimension:ceresta_festa run gamemode adventure
execute at @s if dimension neodimension:parkour run gamemode adventure

# Biome
execute at @s if biome ~ ~ ~ neodimension:pointnemo run gamemode adventure


