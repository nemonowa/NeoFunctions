# 命名：621
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:player_killed_entity/soul4
# =/function neofunction:system/adv/player_killed_entity/621


## 内容
#鍵開け
fill 609 5 1415 606 3 1416 air replace
playsound minecraft:block.glass.break record @s ~ ~ ~ 2.0
execute as @s at @s run tellraw @a[distance=..24] {"text":"宝物庫への道が開いた！","color":"yellow","bold":true,"italic":false}


#ランダムチェスト再配置
data merge block 605 5 1421 {LootTable:"neofunction:chest/2",Items:[],CustomName:[{"text":"neo","color":"aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true},{"text":" ✯2 Random LootTable ","color":"aqua","bold":true,"italic":true,"underlined":true,"obfuscated":false},{"text":"neo","color":"aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true}]}

data merge block 604 3 1418 {LootTable:"neofunction:chest/1",Items:[],CustomName:[{"text":"neo","color":"white","bold":true,"italic":true,"underlined":false,"obfuscated":true},{"text":" ✯1 Random LootTable ","color":"white","bold":true,"italic":true,"underlined":true,"obfuscated":false},{"text":"neo","color":"white","bold":true,"italic":true,"underlined":false,"obfuscated":true}]}

data merge block 601 3 1421 {LootTable:"neofunction:chest/1",Items:[],CustomName:[{"text":"neo","color":"white","bold":true,"italic":true,"underlined":false,"obfuscated":true},{"text":" ✯1 Random LootTable ","color":"white","bold":true,"italic":true,"underlined":true,"obfuscated":false},{"text":"neo","color":"white","bold":true,"italic":true,"underlined":false,"obfuscated":true}]}

data merge block 605 4 1410 {LootTable:"neofunction:chest/2",Items:[],CustomName:[{"text":"neo","color":"aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true},{"text":" ✯2 Random LootTable ","color":"aqua","bold":true,"italic":true,"underlined":true,"obfuscated":false},{"text":"neo","color":"aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true}]}

data merge block 602 3 1412 {LootTable:"neofunction:chest/1",Items:[],CustomName:[{"text":"neo","color":"white","bold":true,"italic":true,"underlined":false,"obfuscated":true},{"text":" ✯1 Random LootTable ","color":"white","bold":true,"italic":true,"underlined":true,"obfuscated":false},{"text":"neo","color":"white","bold":true,"italic":true,"underlined":false,"obfuscated":true}]}

data merge block 600 3 1410 {LootTable:"neofunction:chest/1",Items:[],CustomName:[{"text":"neo","color":"white","bold":true,"italic":true,"underlined":false,"obfuscated":true},{"text":" ✯1 Random LootTable ","color":"white","bold":true,"italic":true,"underlined":true,"obfuscated":false},{"text":"neo","color":"white","bold":true,"italic":true,"underlined":false,"obfuscated":true}]}

data merge block 594 6 1421 {LootTable:"neofunction:chest/3",Items:[],CustomName:[{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true},{"text":" ✯3 Random LootTable ","color":"dark_aqua","bold":true,"italic":true,"underlined":true,"obfuscated":false},{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true}]}

data merge block 594 5 1410 {LootTable:"neofunction:chest/3",Items:[],CustomName:[{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true},{"text":" ✯3 Random LootTable ","color":"dark_aqua","bold":true,"italic":true,"underlined":true,"obfuscated":false},{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true}]}

data merge block 595 3 1412 {LootTable:"neofunction:chest/1",Items:[],CustomName:[{"text":"neo","color":"white","bold":true,"italic":true,"underlined":false,"obfuscated":true},{"text":" ✯1 Random LootTable ","color":"white","bold":true,"italic":true,"underlined":true,"obfuscated":false},{"text":"neo","color":"white","bold":true,"italic":true,"underlined":false,"obfuscated":true}]}

data merge block 596 3 1418 {LootTable:"neofunction:chest/1",Items:[],CustomName:[{"text":"neo","color":"white","bold":true,"italic":true,"underlined":false,"obfuscated":true},{"text":" ✯1 Random LootTable ","color":"white","bold":true,"italic":true,"underlined":true,"obfuscated":false},{"text":"neo","color":"white","bold":true,"italic":true,"underlined":false,"obfuscated":true}]}

data merge block 596 4 1420 {LootTable:"neofunction:chest/2",Items:[],CustomName:[{"text":"neo","color":"aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true},{"text":" ✯2 Random LootTable ","color":"aqua","bold":true,"italic":true,"underlined":true,"obfuscated":false},{"text":"neo","color":"aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true}]}











