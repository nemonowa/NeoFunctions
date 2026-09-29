# 命名：1405
# 説明：redを投げた時
# >
# =/function neofunction:entity/.spawn/obj/item/cmd/1405


#アイテム
execute as @s on origin run loot give @s loot neofunction:item/other/1406
playsound minecraft:block.amethyst_block.resonate master @a[distance=..4] ~ ~ ~ 0.25 1.66
execute on origin run title @s subtitle [{"text":"||","color":"green","bold":true,"italic":false,"obfuscated":true},{"text":"||","color":"gray"},{"text":"||"},{"text":" Form=Emerald ","obfuscated":false},{"text":"||"},{"text":"||","color":"gray"},{"text":"||"}]
execute on origin run title @s title ""
kill @s

