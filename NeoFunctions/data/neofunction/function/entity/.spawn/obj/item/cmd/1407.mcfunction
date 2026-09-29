# 命名：1407
# 説明：青を投げた時
# >
# =/function neofunction:entity/.spawn/obj/item/cmd/1407


#アイテム
execute as @s on origin run loot give @s loot neofunction:item/other/1405
playsound minecraft:block.amethyst_block.resonate master @a[distance=..4] ~ ~ ~ 0.25 1.66
execute on origin run title @s subtitle [{"text":"||","color":"red","bold":true,"italic":false,"obfuscated":true},{"text":"||","color":"gray"},{"text":"||"},{"text":" Form=Garnet ","obfuscated":false},{"text":"||"},{"text":"||","color":"gray"},{"text":"||"}]
execute on origin run title @s title ""
kill @s


