# 命名：=/function admin:loot/chest/1
# 説明：制作者用アイテム全部配置チェスト
# 実行条件：https://docs.google.com/spreadsheets/d/1oRn_1tbEpzJEsyvsKct2pbeRSbK9n8WjXLdGHn6SC50/edit?gid=124924431#gid=124924431&range=V10
# >/execute in minecraft:the_end run tp @s 1331.24 153.00 1224.72 89.95 34.10
# =/function admin:loot/chest/.neo


## 内容
$scoreboard players set #Calc1 temp $(N)
scoreboard players remove #Calc1 temp 1
scoreboard players operation #Calc1 temp *= $27 const
scoreboard players operation #Calc2 temp = #Calc1 temp
scoreboard players add #Calc2 temp 27
execute store result storage admin:chest Macro.Min int 1 run scoreboard players get #Calc1 temp
execute store result storage admin:chest Macro.Max int 1 run scoreboard players get #Calc2 temp
data modify storage admin:chest Macro.Function set value "admin:loot/chest/for"
function neofunction:asset/nbt/for_in_range with storage admin:chest Macro
data remove storage admin:chest Macro