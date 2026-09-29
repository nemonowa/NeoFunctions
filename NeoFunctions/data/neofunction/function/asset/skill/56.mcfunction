# 命名：【イグニス・ベネディクション】
# 説明：トリガーすると1分間、自身に湧流の加護を付与し、被弾時に、♡2回復する（クールダウン10秒）
# 説明：https://docs.google.com/spreadsheets/d/1oRn_1tbEpzJEsyvsKct2pbeRSbK9n8WjXLdGHn6SC50/edit?gid=372993580#gid=372993580&range=A56
# >
# =/function neofunction:asset/skill/56

# 内容：

execute if score @s venedictiontimerflag matches 1 run return run tellraw @s "他の加護を所持しています"
scoreboard players set @s venedictiontimerflag 1
tag @s add playerbomb


# 演出：
playsound minecraft:entity.player.hurt_on_fire record @a[distance=..8] ~ ~ ~ 1.0 0.5
particle minecraft:enchant ~ ~ ~ 0.2 0.2 0.2 0.1 100 force


# 消費SP
scoreboard players remove @s SP 40