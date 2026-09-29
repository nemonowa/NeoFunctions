# 命名：864
# 説明：システム
# 説明：進捗達成時（エンチャ金林檎消費
# >/function neofunction:consume_item/248
# =/function neofunction:system/adv/consume_item/864

## 内容
tellraw @s [{"selector":"@s"},{"text":"さん。私を食べないでくれませんか？"}]
playsound minecraft:entity.cow.death record @a[distance=..8] ~ ~ ~ 1 0.5 1
summon cow ~ ~ ~ {Health:100f,CustomName:{"text":"私の肩ロース返してくれませんか？","color":"dark_red","bold":true,"italic":false},attributes:[{id:"minecraft:max_health",base:100},{id:"minecraft:armor",base:100}]}
