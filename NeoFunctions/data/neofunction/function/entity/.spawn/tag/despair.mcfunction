# 命名：despair
# 説明：エンティティ処理
# 説明：despairタグを持っている=カスタムエンティティ
# >/function neofunction:entity/.spawn/tag/1
# =/function neofunction:entity/.spawn/tag/despair




#SANチェック
execute as @s at @s as @a[distance=..64] run scoreboard players remove @s SP 35
execute as @s at @s as @a[distance=..64] run playsound minecraft:ambient.cave record @s ~ ~ ~ 1 1.5 1
execute as @s at @s as @a[distance=..64] run title @s actionbar [{"text":"SANチェック"}]