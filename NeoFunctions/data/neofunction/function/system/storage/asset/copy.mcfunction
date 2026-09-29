# 命名：copy
# 説明：>/data get storage neofunction:asset
# >/
# =/function neofunction:system/storage/asset/copy


## 内容
$tellraw @s {"text":">> NEXUS;KEYCODE <<","color":"blue","bold":true,"underlined":true,click_event:{"action":"copy_to_clipboard","value":"/embark code:$(mcver):$(ver):$(time):$(gametime):$(level):$(uuid0):$(uuid1):$(uuid2):$(uuid3)"},hover_event:{"action":"show_text","value":[{"text":"click to clipboard!!"}]}}
