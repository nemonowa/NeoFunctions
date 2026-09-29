# 命名：harvestloop2
# 説明：収穫数に応じてlootをループ処理
# >
# =/function neofunction:asset/sign/spellsign/base/harvestloop2


# 内容

execute if score harvest temp matches ..0 run return 0
execute in neodimension:nexus positioned 1290 8 1290 run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand

##ループ処理
scoreboard players remove harvest temp 1
execute if score harvest temp matches 1.. run function neofunction:asset/sign/spellsign/base/harvestloop2