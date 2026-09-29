# 命名：mob
# 説明：エンティティ処理
# 説明：HPを持つ全エンティティ
# >/function neofunction:entity/.spawn/.neo
# =/function neofunction:entity/.spawn/mob


# 内容
tag @s add mob

# 敵or中立or味方
execute as @s[type=#neofunction:ally] run function neofunction:entity/.spawn/mob/ally
execute as @s[type=#neofunction:safe] run function neofunction:entity/.spawn/mob/safe
execute as @s[type=!#neofunction:safe,tag=!ally] run function neofunction:entity/.spawn/mob/enemy

# スポーン時に装備品をドロップしなくする
data merge entity @s {drop_chances:{mainhand:-327.67F,offhand:-327.67F,feet:-327.67F,legs:-327.67F,chest:-327.67F,head:-327.67F}}

# スポーン時に全回復させる
data merge entity @s {Health:1024f}
data merge entity @s {attributes:[{id:"minecraft:max_absorption",base:9999}]}

# HP可視化(HPに干渉する処理より最後の実行順に配置
execute as @s store result score @s HPmax run data get entity @s Health

# 次元別バニラモブ入れ替え[tag=vanilla]
execute as @s[tag=vanilla,type=!armor_stand] at @s if dimension neodimension:ceresta_festa if predicate neofunction:random_chance/60 run function neofunction:entity/.spawn/mob/.dim/ceresta

# バニラモブのレベル指定
execute as @s[tag=vanilla] run function neofunction:entity/.spawn/tag/lv

# 進捗用
function neofunction:entity/.spawn/mob/uuidcheck