# 命名：99
# 説明：クエスト個別タグ付与&重複受注検知
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/tag/102

#内容

#スタート演出へ
playsound item.goat_horn.sound.0 record @s ~ ~ ~ 10 0.8 1
title @s subtitle [{"text":"꧁","color":"green","bold":true,"italic":false},{"text":"MISSION START","color":"#D8DE2A"},{"text":"꧂"}]
title @s title [{"text":"|||","color":"green","bold":true,"underlined":false,"strikethrough":false,"obfuscated":true},{"text":" 採集開始 ","color":"#D8DE2A","obfuscated":false},{"text":"|||"}]
effect give @s minecraft:glowing 300 119 false
execute in neodimension:ceresta_festa run tp @s 870.49 45.00 2025.41 1891.10 -4.91

## 再使用のために進捗剥奪
advancement revoke @s only neofunction:inventory_changed/paper