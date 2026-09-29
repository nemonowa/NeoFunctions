# 命名：c-2-10
# 説明：
# 実行条件：一章の開始進捗
# >
# =/function neofunction:asset/event/quest/c-2-10


# 内容
tp @s ~ ~ ~ facing entity @e[nbt={DeathLootTable:"neofunction:asset/summon/102"},distance=..99,limit=1] eyes
execute at @e[nbt={DeathLootTable:"neofunction:asset/summon/102"},distance=..99] run particle minecraft:happy_villager ~ ~ ~ 0.6 1.8 0.6 0.1 100 force @s
execute at @e[nbt={DeathLootTable:"neofunction:asset/summon/102"},distance=..99] run playsound block.note_block.bell record @s ~ ~ ~ 10 2.0 1
effect give @e[nbt={DeathLootTable:"neofunction:asset/summon/102"},distance=..99] minecraft:glowing 30 0 false

tellraw @s [{"text":"新しい目標：","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"碧天のシエラ"}]}},{"text":"エリアのキーパーソンからキークエストを受注する","color":"yellow"}]

tellraw @s [{"text":"<","color":"white"},{"text":"？？？","color":"green"},{"text":">「……みんなが騒がしいわね。今回はどんな異邦人さんが来たのかしら？」"}]
effect give @s minecraft:blindness 3 126