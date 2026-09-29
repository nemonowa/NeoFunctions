# 命名：count
# 説明：
# >/function neofunction:asset/skill/232 
# >/function neofunction:asset/skill/233
# >/function neofunction:asset/skill/234
# >/function neofunction:asset/skill/235
# =/function neofunction:asset/skill/tamer/count


#ウルフ
$execute store result score @s temp run execute if entity @e[tag=familiar,nbt={Owner:$(OwnerUUID)}]
#スノーゴーレム＆ゴーレム
$execute store result score #calc temp run execute if entity @e[nbt={equipment:{feet:{components:{"minecraft:custom_data":{Owner:$(OwnerUUID)}}}}}]

scoreboard players operation @s temp += #calc temp 


execute if score @s[scores={LVL=..4}] temp matches 3.. run tellraw @s {"text":"召喚数上限はレベル5まで3体です。","color":"dark_red","bold":true,"italic":false}
execute if score @s[scores={LVL=..4}] temp matches 3.. run return -1
execute if score @s[scores={LVL=5..6}] temp matches 5.. run tellraw @s {"text":"召喚数上限はレベル7まで5体です。","color":"dark_red","bold":true,"italic":false}
execute if score @s[scores={LVL=5..6}] temp matches 5.. run return -1
execute if score @s[scores={LVL=7..8}] temp matches 6.. run tellraw @s {"text":"召喚数上限はレベル9まで6体です。","color":"dark_red","bold":true,"italic":false}
execute if score @s[scores={LVL=7..8}] temp matches 6.. run return -1
execute if score @s[scores={LVL=9..10}] temp matches 7.. run tellraw @s {"text":"召喚数上限はレベル11まで7体です。","color":"dark_red","bold":true,"italic":false}
execute if score @s[scores={LVL=9..10}] temp matches 7.. run return -1
execute if score @s[scores={LVL=11..12}] temp matches 8.. run tellraw @s {"text":"召喚数上限はレベル13まで8体です。","color":"dark_red","bold":true,"italic":false}
execute if score @s[scores={LVL=11..12}] temp matches 8.. run return -1
execute if score @s[scores={LVL=13..14}] temp matches 9.. run tellraw @s {"text":"召喚数上限はレベル15まで9体です。","color":"dark_red","bold":true,"italic":false}
execute if score @s[scores={LVL=13..14}] temp matches 9.. run return -1
execute if score @s[scores={LVL=15..16}] temp matches 10.. run tellraw @s {"text":"召喚数上限はレベル17まで10体です。","color":"dark_red","bold":true,"italic":false}
execute if score @s[scores={LVL=15..16}] temp matches 10.. run return -1
execute if score @s[scores={LVL=17..18}] temp matches 11.. run tellraw @s {"text":"召喚数上限はレベル19まで11体です。","color":"dark_red","bold":true,"italic":false}
execute if score @s[scores={LVL=17..18}] temp matches 11.. run return -1
execute if score @s[scores={LVL=19..20}] temp matches 12.. run tellraw @s {"text":"召喚数上限はレベル21まで12体です。","color":"dark_red","bold":true,"italic":false}
execute if score @s[scores={LVL=19..20}] temp matches 12.. run return -1
execute if score @s[scores={LVL=21..22}] temp matches 13.. run tellraw @s {"text":"召喚数上限はレベル23まで13体です。","color":"dark_red","bold":true,"italic":false}
execute if score @s[scores={LVL=21..22}] temp matches 13.. run return -1
execute if score @s[scores={LVL=23..24}] temp matches 14.. run tellraw @s {"text":"召喚数上限はレベル25まで14体です。","color":"dark_red","bold":true,"italic":false}
execute if score @s[scores={LVL=23..24}] temp matches 14.. run return -1
execute if score @s[scores={LVL=25..26}] temp matches 15.. run tellraw @s {"text":"召喚数上限はレベル27まで15体です。","color":"dark_red","bold":true,"italic":false}
execute if score @s[scores={LVL=25..26}] temp matches 15.. run return -1
execute if score @s[scores={LVL=27..28}] temp matches 16.. run tellraw @s {"text":"召喚数上限はレベル29まで16体です。","color":"dark_red","bold":true,"italic":false}
execute if score @s[scores={LVL=27..28}] temp matches 16.. run return -1
execute if score @s[scores={LVL=29..}] temp matches 17.. run tellraw @s {"text":"召喚数上限はレベル30で17体です。","color":"dark_red","bold":true,"italic":false}
execute if score @s[scores={LVL=29..}] temp matches 17.. run return -1

return 0