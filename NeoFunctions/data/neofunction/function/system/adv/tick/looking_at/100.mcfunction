# 命名：100
# 説明：進捗達成時（セレスタちゃんを見る）
# >
# =/function neofunction:system/adv/tick/looking_at/100


## 内容
effect give @e[nbt={DeathLootTable:"neofunction:asset/summon/100"}] minecraft:glowing 9 0 false

tellraw @s [{"text":"<","color":"white","italic":false,"underlined":false},{"text":"セレスタ","color":"blue","bold":true},{"text":">","italic":false},{"text":"「こっちだよ！」","italic":false}]


