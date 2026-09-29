# 命名：【ヴェントゥス・ベネディクション】
# 説明：1分間、自身に反重の加護を付与し、物理攻撃時に、一番近い対象に浮遊効果を与える（クールダウン10秒）
# 説明：https://docs.google.com/spreadsheets/d/1oRn_1tbEpzJEsyvsKct2pbeRSbK9n8WjXLdGHn6SC50/edit?gid=372993580#gid=372993580&range=A1
# >
# =/function neofunction:asset/skill/64


# 内容：
execute if score @s venedictiontimerflag matches 1 run return run tellraw @s "他の加護を所持しています"
scoreboard players set @s venedictiontimerflag 1
tag @s add playerlev


# 演出：
playsound minecraft:entity.warden.sonic_boom record @a[distance=..8] ~ ~ ~ 1.0 2
particle minecraft:enchant ~ ~ ~ 0.2 0.2 0.2 0.1 100 force

# 消費SP
scoreboard players remove @s SP 40
