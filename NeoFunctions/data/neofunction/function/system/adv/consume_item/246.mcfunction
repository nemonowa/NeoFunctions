# 命名：246
# 説明：システム
# 説明：進捗達成時（エンチャ金林檎消費
# >/function neofunction:consume_item/246
# =/function neofunction:system/adv/consume_item/246

## 内容
tellraw @s [{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"覚悟完了。","color":"#F08011","bold":true,"italic":false}]
effect give @s minecraft:jump_boost 15 200
