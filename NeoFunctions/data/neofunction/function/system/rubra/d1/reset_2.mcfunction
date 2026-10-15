# 命名：reset_2
# 説明：reset の続き：星核の花を植え直し、セレンの横穴の砂利をどける
# 実行条件：schedule（setup が読み込んだチャンクが固定されているあいだ：setup_2 の 40t より前）
# >/function neofunction:system/rubra/d1/reset
# =/function neofunction:system/rubra/d1/reset_2

# 内容
execute in neodimension:ceresta_festa run function neofunction:system/rubra/d1/flowers_restore
execute in neodimension:ceresta_festa run fill 771 -40 3268 783 -39 3268 minecraft:air replace minecraft:gravel
tellraw @a[gamemode=creative] {"text":"Ready! > neofunction:system/rubra/d1/reset（紅脈の坑を最初の状態に戻しました。進み具合 410）","color":"gray"}
