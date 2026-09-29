# 命名：232
# 説明：システム
# 説明：進捗達成時（エンチャ金林檎消費
# >/function neofunction:consume_item/228
# =/function neofunction:system/adv/consume_item/232

## 内容
execute as @s[scores={infection=0}] run tellraw @s {"text":"＊感染していないようだ。（感染率0%）","color":"dark_gray","bold":true,hover_event:{"action":"show_text","value":[{"text":"主にゾンビに近づきすぎることで感染し、感染後は時間経過でも悪化する。感染率が低い場合は蜂蜜やシャワーで治るが悪化すると特殊な治療薬がないと..."}]}}

execute as @s[scores={infection=1..10}] run playsound minecraft:entity.experience_orb.pickup record @s ~ ~ ~ 1 1.5 1

execute as @s[scores={infection=1..10}] run tellraw @s [{"text":"＊","color":"dark_aqua","bold":true,hover_event:{"action":"show_text","value":[{"text":"主にゾンビに近づきすぎることで感染し、感染後は時間経過でも悪化する。感染率が低い場合は蜂蜜やシャワーで治るが悪化すると特殊な治療薬がないと..."}]},click_event:{"action":"run_command",command:"/trigger kill"}},{"text":"ウイルス感染","color":"dark_red","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"主にゾンビに近づきすぎることで感染し、感染後は時間経過でも悪化する。感染率が低い場合は蜂蜜やシャワーで治るが悪化すると特殊な治療薬がないと..."}]}},{"text":"を治療した。（感染率0%）","color":"dark_aqua","bold":true}]

scoreboard players set @s infection 0
