# 命名：dim-ceresta
# 説明：自然湧きの制御。バイオーム別、バニラモブのスポーン時置き換え処理
# 説明：セレスタフェスタでバニラエネミーがわいたとき六割で別のmobになる
# >/function neofunction:entity/.spawn/mob
# =/function neofunction:entity/.spawn/dim-ceresta


# バイオームでさらに区分しよう
# セレスティアルバード
# execute as @s[type=minecraft:bat] at @s run function neofunction:asset/summon/303

# 羊毛NEO
# execute as @s[type=minecraft:sheep] at @s run function neofunction:asset/summon/301
# デブ羊
# execute as @s[type=minecraft:pig] at @s run function neofunction:asset/summon/124
# へび
# execute as @s[type=minecraft:chicken] at @s run function neofunction:asset/summon/250
# シープカウ
# execute as @s[type=minecraft:cow] at @s run function neofunction:asset/summon/304
# ユニコーン（仮）
# execute as @s[type=minecraft:horse] at @s run function neofunction:asset/summon/305
# セレスタイガー
# execute as @s[type=minecraft:donkey] at @s run function neofunction:asset/summon/307

tag @s add del

# ブルーらいむ
execute as @s[type=minecraft:magma_cube] at @s run function neofunction:asset/summon/77
execute as @s[type=minecraft:magma_cube,predicate=neofunction:weather_check/sunny] at @s run function neofunction:asset/summon/639
execute as @s[type=minecraft:magma_cube,predicate=neofunction:weather_check/rainy] at @s run function neofunction:asset/summon/640
execute as @s[type=minecraft:magma_cube,predicate=neofunction:weather_check/thunder] at @s run function neofunction:asset/summon/641

# 精霊CHS
execute as @s[type=minecraft:zombie,predicate=neofunction:random_chance/25] at @s run function neofunction:asset/summon/347
execute as @s[type=minecraft:zombie,predicate=neofunction:random_chance/25] at @s run function neofunction:asset/summon/348
execute as @s[type=minecraft:zombie,predicate=neofunction:random_chance/25] at @s run function neofunction:asset/summon/349
execute as @s[type=minecraft:zombie,predicate=neofunction:random_chance/25] at @s run function neofunction:asset/summon/350

# 弓精霊CHS
execute as @s[type=minecraft:skeleton] at @s run function neofunction:asset/summon/351

# 爆精霊CHS
execute as @s[type=minecraft:creeper] at @s run function neofunction:asset/summon/352

# やどかりピンチビートル
execute as @s[type=minecraft:spider] at @s run function neofunction:asset/summon/353

# ハンプティ=ダンプティ
execute as @s[type=minecraft:enderman] at @s run function neofunction:asset/summon/313

# レッサー・リッチ
execute as @s[type=minecraft:witch] at @s run function neofunction:asset/summon/309

# イカFLY
execute as @s[type=minecraft:glow_squid] at @s run function neofunction:asset/summon/337

# スカイマンタ
# execute as @s[type=minecraft:tropical_fish] at @s run function neofunction:asset/summon/53

# 力が干しイカ？
execute as @s[type=minecraft:dolphin] at @s run function neofunction:asset/summon/336

# カエルが生える
# ストライカー20% 残り80%
execute if entity @s[type=husk] at @s if predicate neofunction:random_chance/20 run return run function neofunction:asset/summon/684
# スリンガー20% 残り60%
execute if entity @s[type=husk] at @s if predicate neofunction:random_chance/25 run return run function neofunction:asset/summon/685
# シャーマン20% 残り40%
execute if entity @s[type=husk] at @s if predicate neofunction:random_chance/33 run return run function neofunction:asset/summon/686
# 自爆20% 残り20%
execute if entity @s[type=husk] at @s if predicate neofunction:random_chance/50 run return run function neofunction:asset/summon/690
# 祈祷10% 残り10%
execute if entity @s[type=husk] at @s if predicate neofunction:random_chance/50 run return run function neofunction:asset/summon/687
# オフィサー8% 残り2%
execute if entity @s[type=husk] at @s if predicate neofunction:random_chance/80 run return run function neofunction:asset/summon/688
# エリートストライカー0.66% 残り1.33%
execute if entity @s[type=husk] at @s if predicate neofunction:random_chance/33 run return run function neofunction:asset/summon/702
# エリートアイアン0.66% 残り0.66%
execute if entity @s[type=husk] at @s if predicate neofunction:random_chance/50 run return run function neofunction:asset/summon/704
# エリートスリンガー0.66% 残り0%
execute if entity @s[type=husk] at @s run return run function neofunction:asset/summon/703
