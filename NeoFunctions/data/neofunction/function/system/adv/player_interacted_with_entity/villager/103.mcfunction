# 命名：102
# 説明：ここにシエラさんに話しかけたときの処理を書く！！！！
# >/function neofunction:system/adv/player_interacted_with_entity/villager
# =/function neofunction:system/adv/player_interacted_with_entity/villager/103


## 目標
title @s actionbar {"text":"第１章：目標制覇！","color":"green","bold":true}
title @s[advancements={neoadvancement:ceresta/root/2/9=false}] actionbar {"text":"第９目標：エリア到達","color":"green","bold":true}
title @s[advancements={neoadvancement:ceresta/root/2/8=false}] actionbar {"text":"第８目標：ボス討伐","color":"green","bold":true}
title @s[advancements={neoadvancement:ceresta/root/2/7=false}] actionbar {"text":"第７目標：隠し要素","color":"green","bold":true}
title @s[advancements={neoadvancement:ceresta/root/2/6=false}] actionbar {"text":"第６目標：スキル探索","color":"green","bold":true}
title @s[advancements={neoadvancement:ceresta/root/2/5=false}] actionbar {"text":"第５目標：クエスト探査","color":"green","bold":true}
title @s[advancements={neoadvancement:ceresta/root/2/4=false}] actionbar {"text":"第４目標：エネミー探索","color":"green","bold":true}
title @s[advancements={neoadvancement:ceresta/root/2/3=false}] actionbar {"text":"第３目標：アイテム探索","color":"green","bold":true}
title @s[advancements={neoadvancement:ceresta/root/2/2=false}] actionbar {"text":"第２目標：アンカー配置","color":"green","bold":true}
title @s[advancements={neoadvancement:ceresta/root/2/1=false}] actionbar {"text":"第１目標：商人と話そう！","color":"green","bold":true}


## ランダム会話呼び出し：
execute as @e[type=villager,limit=1,sort=nearest,distance=..6,nbt={DeathLootTable:"neofunction:asset/summon/103"}] run function neofunction:system/adv/player_interacted_with_entity/villager/103/.neo
