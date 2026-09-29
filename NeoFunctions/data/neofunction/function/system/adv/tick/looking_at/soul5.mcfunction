# 命名：びりーをはじめてみた
# 説明：
# >
# =/function neofunction:system/adv/tick/looking_at/soul5


# 説明：mamon32
loot spawn ~ ~ ~ loot neofunction:item/mamon/32
execute as @e[type=minecraft:item,distance=..2] at @s run data merge entity @s {PickupDelay:5}

tellraw @s [{"text":"<","color":"white","italic":false,"underlined":false},{"text":"開拓者ビリー","color":"blue","bold":true},{"text":">","italic":false},{"text":"「新入りか、俺はここの野営地で頭領をやってるもんだ」"}]
tellraw @s [{"text":"<","color":"white","italic":false,"underlined":false},{"text":"開拓者ビリー","color":"blue","bold":true},{"text":">","italic":false},{"text":"「挨拶がわりと言っちゃぁなんだが先立つ路銀が必要だろ？」"}]
tellraw @s [{"text":"<","color":"white","italic":false,"underlined":false},{"text":"開拓者ビリー","color":"blue","bold":true},{"text":">","italic":false},{"text":"「これはこの島のマモンと呼ばれる通貨だ」"}]
tellraw @s [{"text":"<","color":"white","italic":false,"underlined":false},{"text":"開拓者ビリー","color":"blue","bold":true},{"text":">","italic":false},{"text":"「露店でも見ていけ。飯に武器に道具大体なんでも揃ってるぜ？」"}]