# 命名：ceresta
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:using_item/carrot_on_a_stick
# =/function neofunction:system/adv/player_interacted_with_entity/villager/ceresta


## 内容
tag @s[nbt={CustomName:"セレスタニアン"}] add del

execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「ようこそセレスタフェスタへ！」"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「セレスタちゃんを崇めよ！」"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「セレスタ・フェスタ（祝詞）」"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「セレベリはいいぞ！」"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> （♪ハーベストダンスにノっている）"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「…しかしルクスイーファは豊作であった。」"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「ハービット地方の出身だなも。」"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「ウルカニア地方では鍛治が盛んやけん！」"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「猫橋温泉よいとこ一度はおいで〜」"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「俺は昔ビリーの旦那に救われたんだ…」"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「アヴィエンディアは…実在する！」"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「セレスタ様は祝祭と冥葬を司る大地母神です。」"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「円環の祝祭はその年の異邦人の手に託されているんだよ。頼んだよ！」"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「かつては俺も貴様のような異邦人であったが…膝に矢を受けてしまってな…」"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「・・・。」"}]








