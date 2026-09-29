# 命名：c-3-10
# 説明：
# 実行条件：三章の開始進捗
# >
# =/function neofunction:asset/event/quest/c-3-10


# 内容
tp @s ~ ~ ~ facing entity @e[nbt={DeathLootTable:"neofunction:asset/summon/103"},distance=..128,limit=1] eyes
execute at @e[nbt={DeathLootTable:"neofunction:asset/summon/103"},distance=..99] run particle minecraft:happy_villager ~ ~ ~ 0.6 1.8 0.6 0.1 100 force @s
execute at @e[nbt={DeathLootTable:"neofunction:asset/summon/103"},distance=..99] run playsound block.note_block.bell record @s ~ ~ ~ 10 2.0 1
effect give @e[nbt={DeathLootTable:"neofunction:asset/summon/103"},distance=..99] minecraft:glowing 30 0 false

tellraw @s [{"text":"新しい目標：","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"ニール"}]}},{"text":"エリアのキーパーソンからキークエストを受注する","color":"yellow"}]

tellraw @s [{"text":"<","color":"white"},{"text":"ニール","color":"gold"},{"text":">「旅人殿！こっちですぞ～！」","color":"white"}]

