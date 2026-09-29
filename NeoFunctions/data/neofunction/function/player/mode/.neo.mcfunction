# 命名：.neo
# 説明：ゲームモード管理
# 実行条件：@s[gamemode=adventure,tag=!argonaute]
# 実行条件：adventureの場合
# >/function neofunction:player/tick/.neo
# =/function neofunction:player/mode/.neo


# 表示用
title @s[gamemode=adventure,tag=sur] actionbar {"text":"告：アドベンチャーエリア","color":"red","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"このエリアでは採掘、設置が制限されています"}]}}

tag @s[gamemode=adventure,tag=sur] remove sur

# Dimension
execute at @s if dimension minecraft:overworld run gamemode survival
execute at @s if dimension minecraft:the_nether run gamemode survival
execute at @s if dimension minecraft:the_end run gamemode survival

# Biome
# execute at @s if biome ~ ~ ~ minecraft:plains run gamemode survival
