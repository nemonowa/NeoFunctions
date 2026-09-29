# 命名：27
# 説明：システム
# 説明：進捗達成時（エンチャ金林檎消費
# >/function neofunction:consume_item/27
# =/function neofunction:system/adv/consume_item/27

## 内容
tellraw @s [{"text":"<"},{"selector":"@s"},{"text":"> 「血は魂の通貨...」"}]
effect give @s minecraft:instant_damage 1 0 true
