# 命名：866
# 説明：システム
# 説明：進捗達成時（エンチャ金林檎消費
# >/function neofunction:consume_item/248
# =/function neofunction:system/adv/consume_item/866

## 内容
tellraw @s[predicate=neofunction:random_chance/1] [{"selector":"@s"},{"text":"は「デイナイトメア」に転移した！"}]
#playsound minecraft:entity.cow.death record @a[distance=..8] ~ ~ ~ 1 0.5 1
