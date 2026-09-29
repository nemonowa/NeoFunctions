# 命名：.macro
# 説明：ワールドセッティング
# 説明：条件を満たしていた場合スキル実行
# >/function neofunction:system/trigger/on
# =/function neofunction:system/trigger/on/.macro


## 内容
# 習得していない
$execute if entity @s[advancements={neoadvancement:neoskill/$(on)=false}] run return run tellraw @s {"text":"注：スキル$(on)は未習得のため発動できない！","color":"red","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"新スキルはスキルブックや進捗、交易をこなして覚えよう"}]}}

# ソウルが足らない
execute as @s[scores={SP=..0}] run return run function neofunction:system/trigger/on/sp


# クールタイムが終わってない
execute as @s[scores={CT=1..}] run return run function neofunction:system/trigger/on/ct


#発動！
$function neofunction:asset/skill/$(on)

$title @s subtitle {"translate":"%1$s","color":"light_purple","bold":true,"italic":false,"with": [{"storage": "neofunction:skill/$(on)","nbt": "name"}]}
title @s title ""

#アクションバーに発動したスキル名を宣言
$title @s actionbar [{"text":"術式発動: "},{"storage":"neofunction:skill/$(on)","nbt":"name"}]

# スキルカットイン演出を作りたい
$execute at @s anchored eyes positioned ^ ^ ^1 run summon area_effect_cloud ~ ~0.5 ~ {Duration:20,Tags:[skill],Passengers:[{id:"minecraft:text_display",alignment:"center",billboard:"center",Tags:["upper"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:{"nbt":"name","storage":"neofunction:skill/$(on)","font":"default"},background:16711680}]}


#scoreboard players add @s CT 1

# 演出
particle minecraft:enchant ~ ~1.6 ~ 0.1 0.1 0.1 1 50 force
execute as @s at @s positioned ~ ~0.2 ~ run function neofunction:asset/particle/trigger
function neofunction:asset/particle/magic