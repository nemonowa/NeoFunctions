# 命名：honey
# 説明：システム
# 説明：進捗達成時（honey_bottle消費
# >/function neofunction:consume_item/honey_bottle
# =/function neofunction:system/adv/consume_item/honey

## 内容
execute as @s[tag=argonaute] run say honey_bottleを食べた！

execute as @s[scores={infection=1..10}] run playsound minecraft:entity.experience_orb.pickup record @s ~ ~ ~ 1 1.5 1

execute as @s[scores={infection=5..}] run tellraw @s [{"text":"＊","color":"dark_aqua","bold":true,"italic":false},{"text":"ウイルス感染","color":"dark_red","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"主にゾンビに近づきすぎることで感染し、感染後は時間経過でも悪化する。感染率が低い場合は蜂蜜やシャワーで治るが悪化すると特殊な治療薬がないと..."}]},click_event:{"action":"run_command",command:"/trigger kill"}},{"text":"の進行を抑制した（感染率","color":"dark_aqua","bold":true,"italic":false},{"score":{"name":"@s","objective":"infection"},"color":"dark_aqua","bold":true,"italic":false},{"text":"0%）","color":"dark_aqua","bold":true,"italic":false}]
execute as @s[scores={infection=5..}] run scoreboard players remove @s infection 1


execute as @s[scores={infection=1..3}] run tellraw @s [{"text":"＊","color":"dark_aqua","bold":true,hover_event:{"action":"show_text","value":[{"text":"主にゾンビに近づきすぎることで感染し、感染後は時間経過でも悪化する。感染率が低い場合は蜂蜜やシャワーで治るが悪化すると特殊な治療薬がないと..."}]},click_event:{"action":"run_command",command:"/trigger kill"}},{"text":"ウイルス感染","color":"dark_red","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"主にゾンビに近づきすぎることで感染し、感染後は時間経過でも悪化する。感染率が低い場合は蜂蜜やシャワーで治るが悪化すると特殊な治療薬がないと..."}]}},{"text":"を治療した。（感染率0%）","color":"dark_aqua","bold":true}]
execute as @s[scores={infection=1..3}] run scoreboard players remove @s infection 1
