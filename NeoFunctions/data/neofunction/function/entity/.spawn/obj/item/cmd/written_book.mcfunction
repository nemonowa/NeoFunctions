# 命名：written_book
# 説明：
# >/function neofunction:entity/.spawn/obj/item/cmd/.neo
# =/function neofunction:entity/.spawn/obj/item/cmd/written_book


# 内容
tag @s add del
execute as @s on origin at @s run function neofunction:asset/particle/transform0
execute as @s on origin at @s run loot give @s loot neofunction:item/other/compass


#execute store result score @p temp1 run time query gametime
#execute as @p run function neofunction:system/scoreboard/time
#tellraw @a [{"text":"* ","color":"dark_red","bold":false,"italic":false},{"selector":"@p","color":"dark_red","bold":false,"italic":false},{"text":" の生存時間 ","color":"dark_red","bold":false,"italic":false},{"score":{"name":"@p","objective":"temp3"},"color":"dark_red","bold":false,"italic":false},{"text":"時間","color":"dark_red","bold":false,"italic":false},{"score":{"name":"@p","objective":"temp2"},"color":"dark_red","bold":false,"italic":false},{"text":"分","color":"dark_red","bold":false,"italic":false},{"score":{"name":"@s","objective":"temp1"},"color":"dark_red","bold":false,"italic":false},{"text":"秒","color":"dark_red","bold":false,"italic":false}]