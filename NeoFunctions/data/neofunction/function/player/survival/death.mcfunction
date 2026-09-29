# 命名：death
# 説明：詰み防止、ワールド正常化
# 説明：死亡直後一回
# >/function neofunction:player/tick
# =/function neofunction:player/survival/death


# 内容
scoreboard players set @s CT 0
scoreboard players reset @s infection
scoreboard players set @s doom 11
tag @s remove 1024
tag @s remove skill259

#HC対策
gamerule spectators_generate_chunks true

#生存時間表示
scoreboard players operation survival temp = @s survival
function neofunction:system/scoreboard/time

tellraw @a [{"text":"* ","color":"dark_red","bold":false,"italic":false},{"selector":"@s","color":"dark_red"},{"text":" の生存時間 "},{"score":{"name":"second","objective":"temp"}},{"text":"時間","bold":false,"italic":false},{"score":{"name":"minute","objective":"temp"}},{"text":"分"},{"score":{"name":"survival","objective":"temp"}},{"text":"秒"}]

# 消滅の呪いがキープインベントリでも消える
clear @s #neofunction:all[minecraft:enchantments~[{enchantments:"minecraft:vanishing_curse"}]]

#再使用
scoreboard players add @s death 1
advancement revoke @s only neofunction:tick/entity_scores/survival/death