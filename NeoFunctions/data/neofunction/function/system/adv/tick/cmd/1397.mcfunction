# 命名：1397
# 説明：進捗達成時
# >1s
# =/function neofunction:system/adv/tick/cmd/1397


# 内容
tellraw @s [{"text":"🔯【神々の義眼】","color":"light_purple"}]
effect give @s night_vision 88 127
effect give @s glowing 88 127
# 効果時間 0 が 26.3 では不可。
effect clear @s blindness
# 効果時間 0 が 26.3 では不可。
effect clear @s darkness
# 効果時間 0 が 26.3 では不可。
effect clear @s nausea
# 効果時間 0 が 26.3 では不可。
effect clear @s weakness
