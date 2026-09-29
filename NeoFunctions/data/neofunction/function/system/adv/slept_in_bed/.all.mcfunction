# 命名：.all
# 説明：システム
# 説明：進捗達成時（ベットで寝る
# >/function neofunction:slept_in_bed
# =/function neofunction:system/adv/slept_in_bed/.all



## 再使用のために進捗剥奪
advancement revoke @s only neofunction:slept_in_bed/.all

## 内容
###条件が満たされていない
#クールタイム
execute if entity @s[scores={CT=1..}] run damage @s 0.01 minecraft:out_of_world
execute if entity @s[scores={CT=1..}] run title @s subtitle [{"text":"クールタイム:"},{"score":{"name":"@s","objective":"CT"}}]
execute if entity @s[scores={CT=1..}] run title @s title [{"text":"いまは寝られない。"}]
execute if entity @s[scores={CT=1..}] run return 0

#腹減り
execute if entity @s[nbt={foodLevel:0}] run damage @s 0.01 minecraft:out_of_world
execute if entity @s[nbt={foodLevel:0}] run title @s subtitle [{"text":"満腹度:"},{"nbt":"foodLevel","entity":"@s"}]
execute if entity @s[nbt={foodLevel:0}] run title @s title [{"text":"いまは寝られない。"}]
execute if entity @s[nbt={foodLevel:0}] run return 1

#ベット効果
scoreboard players add @s CT 20
effect give @s minecraft:hunger 3 127 true
effect give @s minecraft:instant_health 1 27 true

tellraw @s [{"text":"[_","bold":true,"italic":true,"color":"#FF8B8E"},{"selector":"@s","bold":true,"italic":true,"color":"#FF8B8E"},{"text":"の布団_]","bold":true,"italic":true,"color":"#FF8B8E"},{"text":" ε¦)","bold":true,"italic":true,"color":"#FFAF57"},{"text":" ...zzZ（睡眠回復中）","bold":true,"italic":true,"color":"dark_aqua"}]

#ランダムイベント
execute if predicate neofunction:random_chance/1 run return run tellraw @a [{"text":"<","color":"white","bold":true,"italic":false,"underlined":true},{"selector":"@s"},{"text":">「おぞましい夢を見た気がする...。」",hover_event:{"action":"show_text","value":[{"text":"凶兆の悪夢"}]}}]

# poem(inlineSNBTで記載できるのは1.20.5以降)
execute if predicate neofunction:random_chance/10 run return run say 世界は眠り、音を失う。ただ夢だけが、色を持つ。
execute if predicate neofunction:random_chance/20 run return run say 遠くで風が、草を撫でる。まだ誰も知らない夢の入口。
execute if predicate neofunction:random_chance/30 run return run say 夜がひとつ、世界を畳む。星は瞬き、朝を隠す。
execute if predicate neofunction:random_chance/40 run return run say 火の灯りが、静かに揺れる。影だけが、眠りを見守る。
execute if predicate neofunction:random_chance/50 run return run say 夜空に溶ける、吐息ひとつ。世界は今、静止している。
execute if predicate neofunction:random_chance/60 run return run say 微かな足音、誰もいない道。夢だけが先へ進んでいく。
execute if predicate neofunction:random_chance/70 run return run say 星の海に、意識が沈む。朝はまだ、遠いまま。
execute if predicate neofunction:random_chance/80 run return run say 静寂が、すべてを包む。時だけが、ゆっくりと流れる。
execute if predicate neofunction:random_chance/90 run return run say 月明かり、窓を越えて。心はすでに、どこか遠くへ。
say 暗闇に、小さな光。それはきっと、次の朝。
