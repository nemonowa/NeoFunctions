# 命名：god
# 説明：エンティティ処理
# 説明：カスタムタグを持っている=カスタムエンティティ
# >/function neofunction:entity/1_spawn_check
# =/function neofunction:entity/.spawn/tag/god


# ボス
tag @s[tag=god] add king
effect give @s minecraft:resistance infinite 4
execute as @s at @s run title @a[distance=..64] actionbar [{"text":"世界の理が書き換わる...","color":"dark_red"}]

# data merge entity @s {active_effects:[{id:"minecraft:resistance",amplifier:4b,duration:-1}]}