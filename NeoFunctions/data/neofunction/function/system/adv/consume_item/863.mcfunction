# 命名：863
# 説明：進捗達成時（エンチャ金林檎消費
# >/function neofunction:consume_item/863
# =/function neofunction:system/adv/consume_item/863


# 内容
effect give @s minecraft:strength 99 2
playsound minecraft:entity.cow.death record @a[distance=..8] ~ ~ ~ 1 0.5 1
tellraw @s [{"text":"<憤怒に身を灼く","color":"dark_red","bold":true},{"selector":"@s","color":"dark_red"},{"text":"> 俺の「怒り」が有頂天！！！"}]





