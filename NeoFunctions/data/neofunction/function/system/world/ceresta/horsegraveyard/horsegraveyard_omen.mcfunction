# 前兆演出 1発目:落雷+呪いの声
summon minecraft:lightning_bolt 926.38 44.00 1509.30
playsound minecraft:entity.wither.ambient hostile @a 926.38 44.00 1509.30 1 0.6
playsound minecraft:ambient.cave ambient @a 926.38 44.00 1509.30 1 0.8
particle minecraft:soul 926.38 44.00 1509.30 1 1 1 0.05 40

# この後の2発目・3発目・本体出現を時間差で予約する
schedule function neofunction:system/world/ceresta/horsegraveyard/horsegraveyard_omen_strike2 10 replace
schedule function neofunction:system/world/ceresta/horsegraveyard/horsegraveyard_omen_strike3 25 replace
schedule function neofunction:system/world/ceresta/horsegraveyard/horsegraveyard_reveal 50 replace
