# 命名：king
# 説明：エンティティ処理
# 説明：カスタムタグを持っている=カスタムエンティティ
# >/function neofunction:entity/1_spawn_check
# =/function neofunction:entity/.spawn/tag/king



# ボス
team join king @s
tag @s[tag=king] add boss
effect give @s minecraft:resistance infinite 3
execute as @s[tag=!god] at @s run title @a[distance=..64] actionbar [{"text":"戦場が支配される...","color":"dark_red"}]


# data merge entity @s {active_effects:[{id:"minecraft:resistance",amplifier:3b,duration:-1}]}

