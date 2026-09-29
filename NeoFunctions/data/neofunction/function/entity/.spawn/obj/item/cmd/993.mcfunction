# 命名：993
# 説明：兵装変形：トグル処理
# >/function neofunction:entity/.spawn/obj/item/cmd/.neo
# =/function neofunction:entity/.spawn/obj/item/cmd/993


# 説明：RGBに切り替わる処理
data merge entity @s {PickupDelay:0}

#演出
playsound minecraft:block.amethyst_block.resonate master @a[distance=..4] ~ ~ ~ 0.25 1.66

# redがあればgreenに変更
execute as @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{slot:red}}}}] on origin run title @s subtitle [{"text":"||","color":"green","bold":true,"italic":false,"obfuscated":true},{"text":"||","color":"gray"},{"text":"||"},{"text":" Form=Emerald ","obfuscated":false},{"text":"||"},{"text":"||","color":"gray"},{"text":"||"}]

# 【変更：2026-09-28 26.3対応】名前・説明文・文字表示の中身は 1.21.5 から JSON の文字列ではなく文章の部品として読まれる。文字列のままだと {"text":…} がそのまま表示されるため、部品の形（引用符なし）に直す
execute as @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{slot:red}}}}] run data modify entity @s Item.components."minecraft:custom_name" set value [{"text":"|||||||","color":"green","bold":true,"italic":false,"obfuscated":true},{"text":" 異空の火器 ","obfuscated":false},{"text":"|||||||"}]

execute as @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{slot:red}}}}] run return run data modify entity @s Item.components."minecraft:custom_data".slot set value green

# greenがあればblueに変更
execute as @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{slot:green}}}}] on origin run title @s subtitle [{"text":"||","color":"aqua","bold":true,"italic":false,"obfuscated":true},{"text":"||","color":"gray"},{"text":"||"},{"text":" Form=Lapis ","obfuscated":false},{"text":"||"},{"text":"||","color":"gray"},{"text":"||"}]

# 【変更：2026-09-28 26.3対応】名前・説明文・文字表示の中身は 1.21.5 から JSON の文字列ではなく文章の部品として読まれる。文字列のままだと {"text":…} がそのまま表示されるため、部品の形（引用符なし）に直す
execute as @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{slot:green}}}}] run data modify entity @s Item.components."minecraft:custom_name" set value [{"text":"|||||||","color":"aqua","bold":true,"italic":false,"obfuscated":true},{"text":" 異空の火器 ","obfuscated":false},{"text":"|||||||"}]

execute as @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{slot:green}}}}] run return run data modify entity @s Item.components."minecraft:custom_data".slot set value blue

# blue：なんもなければredを付ける
execute on origin run title @s subtitle [{"text":"||","color":"red","bold":true,"italic":false,"obfuscated":true},{"text":"||","color":"gray"},{"text":"||"},{"text":" Form=Garnet ","obfuscated":false},{"text":"||"},{"text":"||","color":"gray"},{"text":"||"}]

# 【変更：2026-09-28 26.3対応】名前・説明文・文字表示の中身は 1.21.5 から JSON の文字列ではなく文章の部品として読まれる。文字列のままだと {"text":…} がそのまま表示されるため、部品の形（引用符なし）に直す
data modify entity @s Item.components."minecraft:custom_name" set value [{"text":"|||||||","color":"red","bold":true,"italic":false,"obfuscated":true},{"text":" 異空の火器 ","obfuscated":false},{"text":"|||||||"}]

data modify entity @s Item.components."minecraft:custom_data".slot set value red

#
execute on origin run title @s title ""

