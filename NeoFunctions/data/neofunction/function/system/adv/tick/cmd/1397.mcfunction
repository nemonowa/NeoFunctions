# 命名：1397
# 説明：進捗達成時
# >1s
# =/function neofunction:system/adv/tick/cmd/1397


# 内容
tellraw @s [{"text":"🔯【神々の義眼】","color":"light_purple"}]
effect give @s night_vision 88 127
effect give @s glowing 88 127
# 【変更：2026-09-28 26.3対応】効果時間 0 が 26.3 では不可。1.20.4 では強さ 127・時間 0 で上書きしてすぐ消える＝その効果を消す動きだったため、effect clear に置き換え
effect clear @s blindness
# 【変更：2026-09-28 26.3対応】効果時間 0 が 26.3 では不可。1.20.4 では強さ 127・時間 0 で上書きしてすぐ消える＝その効果を消す動きだったため、effect clear に置き換え
effect clear @s darkness
# 【変更：2026-09-28 26.3対応】効果時間 0 が 26.3 では不可。1.20.4 では強さ 127・時間 0 で上書きしてすぐ消える＝その効果を消す動きだったため、effect clear に置き換え
effect clear @s nausea
# 【変更：2026-09-28 26.3対応】効果時間 0 が 26.3 では不可。1.20.4 では強さ 127・時間 0 で上書きしてすぐ消える＝その効果を消す動きだったため、effect clear に置き換え
effect clear @s weakness
