# 命名：dim-ceresta
# 説明：自然湧きの制御。バイオーム別、バニラモブのスポーン時置き換え処理
# 説明：セレスタフェスタでバニラエネミーがわいたとき六割で別のmobになる
# >/function neofunction:entity/.spawn/mob
# =/function neofunction:entity/.spawn/mob/.dim/ceresta


###### バイオームで区分
# execute at @s if biome ~ ~ ~ neodimension:cerestafesta/billy run return run function neofunction:entity/.spawn/dim/ceresta/billy
execute at @s if biome ~ ~ ~ neodimension:cerestafesta/skull run return run function neofunction:entity/.spawn/mob/.dim/ceresta/skull
# execute at @s if biome ~ ~ ~ neodimension:cerestafesta/lux run return run function neofunction:entity/.spawn/dim/ceresta/lux
execute at @s if biome ~ ~ ~ neodimension:cerestafesta/frogarea run return run function neofunction:entity/.spawn/mob/.dim/ceresta/frogarea
# execute at @s if biome ~ ~ ~ neodimension:cerestafesta/rod run return run function neofunction:entity/.spawn/dim/ceresta/rod
# execute at @s if biome ~ ~ ~ neodimension:cerestafesta/snow run return run function neofunction:entity/.spawn/dim/ceresta/snow
# execute at @s if biome ~ ~ ~ neodimension:cerestafesta/lune run return run function neofunction:entity/.spawn/dim/ceresta/lune
# execute at @s if biome ~ ~ ~ neodimension:cerestafesta/rose run return run function neofunction:entity/.spawn/dim/ceresta/rose
# execute at @s if biome ~ ~ ~ neodimension:cerestafesta/harbit run return run function neofunction:entity/.spawn/dim/ceresta/harbit
# execute at @s if biome ~ ~ ~ neodimension:cerestafesta/abyss run return run function neofunction:entity/.spawn/dim/ceresta/abyss


###### 敵対存在 精霊とスライム系の置き換えのファイルここに置いてるの、今までのルールとかその辺と少し乖離を起こしてそう。最適な形に直したいな
# 精霊CHS 
execute as @s[type=zombie] at @s run function neofunction:entity/.spawn/mob/.dim/zombie

# 弓精霊CHS
execute as @s[type=skeleton] at @s run function neofunction:asset/summon/800

# スライム系
execute as @s[type=magma_cube,predicate=neofunction:time_check/night] run return run tag @s add del
execute as @s[type=magma_cube] at @s run function neofunction:entity/.spawn/mob/.dim/magma_cube

# 爆精霊CHS

# やどかりピンチビートル
execute as @s[type=spider] at @s run function neofunction:asset/summon/802

# ハンプティ=ダンプティ
execute as @s[type=enderman] at @s run function neofunction:asset/summon/313

# レッサー・リッチ
execute as @s[type=witch] at @s run function neofunction:asset/summon/309



###### 中立存在
# イカFLY
execute as @s[type=glow_squid] at @s run function neofunction:asset/summon/337

# スカイマンタ
# execute as @s[type=tropical_fish] at @s run function neofunction:asset/summon/53

# 力が干しイカ？
execute as @s[type=dolphin] at @s run function neofunction:asset/summon/336


###### 友好存在
# セレスティアルバード
# execute as @s[type=bat] at @s run function neofunction:asset/summon/303

# 羊毛NEO
# execute as @s[type=sheep] at @s run function neofunction:asset/summon/301
# デブ羊
# execute as @s[type=pig] at @s run function neofunction:asset/summon/124
# へび
# execute as @s[type=chicken] at @s run function neofunction:asset/summon/250
# シープカウ
# execute as @s[type=cow] at @s run function neofunction:asset/summon/304
# ユニコーン（仮）
# execute as @s[type=horse] at @s run function neofunction:asset/summon/305
# セレスタイガー
# execute as @s[type=donkey] at @s run function neofunction:asset/summon/307

tag @s add del
