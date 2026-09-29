# 命名：マテリアフィックス
# 説明：トリガーすると、メインハンドのアイテムの耐久を50％まで回復する(50％以上耐久ある場合は減るから注意！)SP50消費。
# 説明：https://docs.google.com/spreadsheets/d/1oRn_1tbEpzJEsyvsKct2pbeRSbK9n8WjXLdGHn6SC50/edit?gid=372993580#gid=372993580&range=A1
# >
# =/function neofunction:asset/skill/29



# 内容
me 「まだ壊さない。お前はもっと頑張れる。」
item modify entity @s weapon.mainhand neofunction:set_damage/0.5
playsound minecraft:block.anvil.use record @a[distance=..8] ~ ~ ~ 1 0.7 1
playsound minecraft:entity.arrow.hit_player record @a[distance=..16] ~ ~ ~ 1 2 1
particle minecraft:enchant ~ ~ ~ 0.2 0.2 0.2 0.1 100 force

# 消費SP
scoreboard players remove @s SP 50