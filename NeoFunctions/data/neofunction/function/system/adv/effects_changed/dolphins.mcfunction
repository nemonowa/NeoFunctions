# 命名：dolphins
# 説明：旧・時間考慮GM編集機構。effects_changedは「変化」したときだけ
# 実行条件：透明エフェクトを持ったエンティティがいるとき。
# >/function neofunction:system/1_detection
# =/function neofunction:system/adv/effects_changed/dolphins



## 内容
execute as @s[nbt={active_effects:[{id:"minecraft:dolphins_grace",amplifier:1b}]}] run gamemode creative @s[gamemode=!creative]
execute as @s[nbt={active_effects:[{id:"minecraft:dolphins_grace",amplifier:2b}]}] run gamemode spectator @s[gamemode=!spectator]
execute as @s[nbt={active_effects:[{id:"minecraft:dolphins_grace",amplifier:3b}]}] run gamemode adventure @s[gamemode=!adventure]
execute as @s[nbt={active_effects:[{id:"minecraft:dolphins_grace",amplifier:4b}]}] run gamemode survival @s[gamemode=!survival]


# SP自然回復上昇 amplifier:11b >function neofunction:system/clock/5_second
