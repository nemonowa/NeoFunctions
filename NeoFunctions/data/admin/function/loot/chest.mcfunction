# 命名：chest
# 説明：制作者用アイテム全部配置チェスト
# 説明：デバッグルームの全アイテム管理機構
# 実行条件：https://docs.google.com/spreadsheets/d/1oRn_1tbEpzJEsyvsKct2pbeRSbK9n8WjXLdGHn6SC50/edit?gid=1459280754#gid=1459280754&range=G11
# >/execute in minecraft:the_end run tp @s 1331.24 153.00 1224.72 89.95 34.10
# =/function admin:loot/chest


# 内容
setblock ~ ~ ~ minecraft:command_block[facing=up]{Command:"function admin:loot/chest"} destroy

# チェストバイオーム
function neofunction:asset/nbt/for_in_range {Function:"admin:loot/chest_for",Min:1,Max:91}
