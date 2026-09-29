# 命名：legacy
# 説明：進捗達成時
# 説明：Legacy:1
# >/function neofunction:consume_item/.all
# =/function neofunction:system/adv/player_hurt_entity/legacy


## 内容
# 【変更：2026-09-28 26.3対応】flash パーティクルは 26.3 で色の指定が必須になったため、1.20.4 と同じ白を指定
particle flash{color:[1.0,1.0,1.0,1.0]} ~ ~ ~ 0.3 0.3 0.3 1 5 force @s
particle minecraft:scrape ~ ~1 ~ 0.3 0.3 0.3 2 5 force @s
particle minecraft:electric_spark ~ ~1 ~ 0.3 0.3 0.3 2 30 force @s
playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 0.5 0.5 0.5
#playsound minecraft:entity.warden.attack_impact master @s ~ ~ ~ 1 0.71 1

playsound entity.wither.death master @a[distance=..16] ~ ~ ~ 0.3 2 0
particle minecraft:end_rod ~ ~1.52 ~ 0.1 0.1 0.1 0.3 90 force


#確率で壊れる処理
execute if predicate neofunction:random_chance/80 run return 1
tellraw @s {"text":"* 装備が砕け散った！","color":"dark_gray"}
playsound minecraft:item.shield.break master @s ~ ~ ~ 1 0.5 1
item modify entity @s weapon.mainhand neofunction:set_nbt/itemcount_decrease
