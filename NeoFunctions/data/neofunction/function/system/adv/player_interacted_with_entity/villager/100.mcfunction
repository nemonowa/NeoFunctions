# 命名：100
# 説明：実行者はセレスタちゃん
# 説明：https://discord.com/channels/1067520683715866634/1253732702205775974
# >/function neofunction:system/adv/player_interacted_with_entity/villager
# =/function neofunction:system/adv/player_interacted_with_entity/villager/100


## 序章メインクエスト分岐
## say こっちだよ！
execute if entity @a[distance=..4,advancements={neoadvancement:ceresta/root/0/1=false}] run return run title @a[distance=..4] actionbar {"text":"セレスタだよ！よろしくね！","color":"green","bold":true}
execute if entity @a[distance=..4,advancements={neoadvancement:ceresta/root/0/2=false}] run return run title @a[distance=..4] actionbar {"text":"ここはパレスオブセレスタ。いろんな町と繋がってるよ！試してみて！","color":"green","bold":true}
execute if entity @a[distance=..4,advancements={neoadvancement:ceresta/root/0/3=false}] run return run title @a[distance=..4] actionbar {"text":"祝祭のブーケを拾って","color":"green","bold":true}
execute if entity @a[distance=..4,advancements={neoadvancement:ceresta/root/0/4=false}] run return run title @a[distance=..4] actionbar {"text":"ひかってる風船を落とすとプレゼントがもらえるよ！","color":"green","bold":true}
execute if entity @a[distance=..4,advancements={neoadvancement:ceresta/root/0/5=false}] run return run title @a[distance=..4] actionbar {"text":"５５５","color":"green","bold":true}
execute if entity @a[distance=..4,advancements={neoadvancement:ceresta/root/0/6=false}] run return run title @a[distance=..4] actionbar {"text":"６６６","color":"green","bold":true}
execute if entity @a[distance=..4,advancements={neoadvancement:ceresta/root/0/7=false}] run return run title @a[distance=..4] actionbar {"text":"７７７","color":"green","bold":true}
execute if entity @a[distance=..4,advancements={neoadvancement:ceresta/root/0/8=false}] run return run title @a[distance=..4] actionbar {"text":"８８８","color":"green","bold":true}
execute if entity @a[distance=..4,advancements={neoadvancement:ceresta/root/0/9=false}] run return run title @a[distance=..4] actionbar {"text":"９９９","color":"green","bold":true}


## 進行状況：上書き式
title @a[distance=..4] actionbar {"text":"セレスタ進行状況：完全制覇！","color":"green","bold":true}
title @a[distance=..4,advancements={neoadvancement:ceresta/root/9/0=false}] actionbar {"text":"セレスタ進行状況：第９章攻略中","color":"green","bold":true}
title @a[distance=..4,advancements={neoadvancement:ceresta/root/8/0=false}] actionbar {"text":"セレスタ進行状況：第８章攻略中","color":"green","bold":true}
title @a[distance=..4,advancements={neoadvancement:ceresta/root/7/0=false}] actionbar {"text":"セレスタ進行状況：第７章攻略中","color":"green","bold":true}
title @a[distance=..4,advancements={neoadvancement:ceresta/root/6/0=false}] actionbar {"text":"セレスタ進行状況：第６章攻略中","color":"green","bold":true}
title @a[distance=..4,advancements={neoadvancement:ceresta/root/5/0=false}] actionbar {"text":"セレスタ進行状況：第５章攻略中","color":"green","bold":true}
title @a[distance=..4,advancements={neoadvancement:ceresta/root/4/0=false}] actionbar {"text":"セレスタ進行状況：第４章攻略中","color":"green","bold":true}
title @a[distance=..4,advancements={neoadvancement:ceresta/root/3/0=false}] actionbar {"text":"セレスタ進行状況：第３章攻略中","color":"green","bold":true}
title @a[distance=..4,advancements={neoadvancement:ceresta/root/2/0=false}] actionbar {"text":"セレスタ進行状況：第２章攻略中","color":"green","bold":true}
title @a[distance=..4,advancements={neoadvancement:ceresta/root/1/0=false}] actionbar {"text":"セレスタ進行状況：第１章攻略中","color":"green","bold":true}

# 章クリア後の特殊メッセージ
execute as @e[limit=1,sort=nearest,distance=..4,tag=god,predicate=neofunction:random_chance/10] run return run tellraw @a[advancements={neoadvancement:ceresta/root/2/0=true},distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「蛙大将が「お前のせいでまた幼体からやり直しケロ！」と言ってたよ！」"}]

execute as @e[limit=1,sort=nearest,distance=..4,tag=god,predicate=neofunction:random_chance/10] run return run tellraw @a[advancements={neoadvancement:ceresta/root/1/0=true},distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「サラザール船長が「スッキリしたぜ！サンキューな！」と言ってたよ！」"}]


## ランダム会話
execute as @e[predicate=neofunction:random_chance/20,limit=1,sort=nearest,distance=..4,tag=god] run return run function neofunction:system/adv/player_interacted_with_entity/villager/100/0
execute as @e[predicate=neofunction:random_chance/20,limit=1,sort=nearest,distance=..4,tag=god] run return run function neofunction:system/adv/player_interacted_with_entity/villager/100/1
execute as @e[predicate=neofunction:random_chance/20,limit=1,sort=nearest,distance=..4,tag=god] run return run function neofunction:system/adv/player_interacted_with_entity/villager/100/2
execute as @e[predicate=neofunction:random_chance/20,limit=1,sort=nearest,distance=..4,tag=god] run return run function neofunction:system/adv/player_interacted_with_entity/villager/100/3
execute as @e[predicate=neofunction:random_chance/20,limit=1,sort=nearest,distance=..4,tag=god] run return run function neofunction:system/adv/player_interacted_with_entity/villager/100/4
execute as @e[predicate=neofunction:random_chance/20,limit=1,sort=nearest,distance=..4,tag=god] run return run function neofunction:system/adv/player_interacted_with_entity/villager/100/5
execute as @e[predicate=neofunction:random_chance/20,limit=1,sort=nearest,distance=..4,tag=god] run return run function neofunction:system/adv/player_interacted_with_entity/villager/100/6
execute as @e[predicate=neofunction:random_chance/20,limit=1,sort=nearest,distance=..4,tag=god] run return run function neofunction:system/adv/player_interacted_with_entity/villager/100/7
execute as @e[predicate=neofunction:random_chance/20,limit=1,sort=nearest,distance=..4,tag=god] run return run function neofunction:system/adv/player_interacted_with_entity/villager/100/8
execute as @e[predicate=neofunction:random_chance/20,limit=1,sort=nearest,distance=..4,tag=god] run return run function neofunction:system/adv/player_interacted_with_entity/villager/100/9
execute as @e[limit=1,sort=nearest,distance=..4,tag=god] run function neofunction:system/adv/player_interacted_with_entity/villager/100/10





