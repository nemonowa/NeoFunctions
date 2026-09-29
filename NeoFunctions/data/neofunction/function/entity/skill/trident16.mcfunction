# 命名：くるくるトライデント
# 説明：敵リスト：サラザール
# >
# =/function neofunction:entity/skill/trident16

# 説明：16方向TPとトライデント射撃を要請

tag @s add trident16

data merge entity @s {NoAI:1b}
tp @s ~ ~ ~ ~ 0
playsound entity.wither.ambient record @a[distance=..32] ~ ~ ~ 2.0 0.8

#実行者がサラザールなら
execute as @s[nbt={DeathLootTable:"neofunction:asset/summon/604"}] run tellraw @p {"text":"波葬エル・マタドール！","color":"dark_blue","bold":true,"italic":false}

schedule function neofunction:entity/skill/trident16particle 5t append
schedule function neofunction:entity/skill/trident16particle 10t append
schedule function neofunction:entity/skill/trident16particle 15t append
schedule function neofunction:entity/skill/trident16particle 20t append
schedule function neofunction:entity/skill/trident16particle 25t append
schedule function neofunction:entity/skill/trident16particle 30t append
schedule function neofunction:entity/skill/trident16particle 35t append
schedule function neofunction:entity/skill/trident16particle 40t append

schedule function neofunction:entity/skill/trident16straight 43t append
schedule function neofunction:entity/skill/trident16straight 46t append
schedule function neofunction:entity/skill/trident16straight 49t append
schedule function neofunction:entity/skill/trident16straight 52t append
schedule function neofunction:entity/skill/trident16straight 55t append
schedule function neofunction:entity/skill/trident16straight 58t append
schedule function neofunction:entity/skill/trident16straight 61t append
schedule function neofunction:entity/skill/trident16straight 64t append
schedule function neofunction:entity/skill/trident16straight 67t append
schedule function neofunction:entity/skill/trident16straight 70t append
schedule function neofunction:entity/skill/trident16straight 73t append
schedule function neofunction:entity/skill/trident16straight 76t append
schedule function neofunction:entity/skill/trident16straight 79t append
schedule function neofunction:entity/skill/trident16straight 82t append
schedule function neofunction:entity/skill/trident16straight 85t append
schedule function neofunction:entity/skill/trident16straight 88t append

schedule function neofunction:entity/skill/trident16straightend 91t append

