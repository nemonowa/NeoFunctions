# 命名：elemental
# 説明：元素の司教召喚
# 実行条件：adventureでない場合m=!2
# >/neofunction:tick/.neo
# =/function neofunction:entity/skill/boss/valerica/summonliving

# 内容：魔女召喚

execute as @s[tag=summonliving,scores={HP=..300}] positioned 556 -43 1424 run function neofunction:asset/summon/774
execute as @s[tag=summonliving,scores={HP=..300}] positioned 543 -43 1412 run function neofunction:asset/summon/774
execute as @s[tag=summonliving,scores={HP=..300}] positioned 531 -43 1424 run function neofunction:asset/summon/774
execute as @s[tag=summonliving,scores={HP=..300}] positioned 543 -43 1436 run function neofunction:asset/summon/774

execute as @s[tag=summonliving,scores={HP=..200}] positioned 531 -43 1412 run function neofunction:asset/summon/775
execute as @s[tag=summonliving,scores={HP=..200}] positioned 531 -43 1436 run function neofunction:asset/summon/775
execute as @s[tag=summonliving,scores={HP=..200}] positioned 555 -43 1436 run function neofunction:asset/summon/775
execute as @s[tag=summonliving,scores={HP=..200}] positioned 556 -43 1413 run function neofunction:asset/summon/775
 
execute as @s[tag=summonliving,scores={HP=..100}] positioned 547 -43 1424 run function neofunction:asset/summon/776
execute as @s[tag=summonliving,scores={HP=..100}] positioned 539 -43 1424 run function neofunction:asset/summon/776

execute if score @s HP matches ..300 run playsound block.beacon.activate record @a[distance=..64] ~ ~ ~ 2.0 2.0 1.0

tag @s[scores={HP=..300}] add valericaToYellow

